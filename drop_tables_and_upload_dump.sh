#!/bin/bash

# Function to check and install missing Python packages
install_python_packages_if_missing() {
    for package in "$@"; do
        if ! python3 -c "import $package" 2>/dev/null; then
            echo "Installing $package..."
            pip install $package
        else
            echo "$package is already installed."
        fi
    done
}

# Initialize variables
TAR_GZ_PATH=""
PSQL_PASSWORD=""
PSQL_USERNAME=""
POSTGRES_HOST=""
TARGET_DB=""
PROJECT_ID="<PROJECT_ID_RIGHT_HERE>"
REDIS_HOST="<REDIS_HOST_RIGHT_HERE>"

# Function to show usage
usage() {
    echo "Usage: $0 --tar_gz_path <path> --psql_password <password> --psql_username <username> --postgres_host <host> --target_db_name <dbname>"
    exit 1
}

# Parse named arguments
while [ "$#" -gt 0 ]; do
    case "$1" in
        --tar_gz_path) TAR_GZ_PATH="$2"; shift 2;;
        --psql_password) PSQL_PASSWORD="$2"; shift 2;;
        --psql_username) PSQL_USERNAME="$2"; shift 2;;
        --postgres_host) POSTGRES_HOST="$2"; shift 2;;
        --target_db_name) TARGET_DB="$2"; shift 2;;
        --) shift; break;;
        -*) usage;;
        *) break;;
    esac
done

# Check if all required arguments are provided
if [ -z "$TAR_GZ_PATH" ] || [ -z "$PSQL_PASSWORD" ] || [ -z "$PSQL_USERNAME" ] || [ -z "$POSTGRES_HOST" ] || [ -z "$TARGET_DB" ]; then
    usage
fi

# Export password for psql
export PGPASSWORD=$PSQL_PASSWORD

# Unpack the .tar.gz file
tar -xzvf $TAR_GZ_PATH

# Extract the .sql file name
SQL_FILE=$(basename $TAR_GZ_PATH .tar.gz).sql

# Inline SQL commands for dropping and creating the database
SQL_COMMANDS="
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = '$TARGET_DB'
  AND pid <> pg_backend_pid();
drop database if exists $TARGET_DB;
create database $TARGET_DB;
"

# Execute the SQL commands on the postgres database
echo "$SQL_COMMANDS" | psql -U $PSQL_USERNAME -h $POSTGRES_HOST postgres

# Execute the .sql file on the target database
cat $SQL_FILE | psql -U $PSQL_USERNAME -h $POSTGRES_HOST $TARGET_DB

# Unset the password variable
unset PGPASSWORD

# Installing python dependencies
install_python_packages_if_missing redis firebase_admin

# Embed and execute flush_redis.py
echo "Flushing firebase users"
python3 << EOF || exit
import firebase_admin
from firebase_admin.auth import Client
import sys

project_id = '$PROJECT_ID'
default_app = firebase_admin.initialize_app(options={'projectId': project_id})
client = Client(default_app)
client.delete_users([u.uid for u in client.list_users().users])
EOF

echo "Flushing redis cache"
python3 << EOF || exit
import redis
r = redis.Redis(host='$REDIS_HOST', port=6379, decode_responses=True)
r.flushall()
EOF

echo "Script executed successfully."
