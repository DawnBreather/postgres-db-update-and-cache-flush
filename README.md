# Database Update and Cache Flush Script

## Overview
This script automates the process of updating a PostgreSQL database and flushing Redis and Firebase caches. It is designed to unpack a `.tar.gz` file containing SQL scripts, execute these scripts against a PostgreSQL database, and subsequently flush Redis and Firebase caches.

## Requirements
- Bash shell
- PostgreSQL
- Python 3
- `redis` and `firebase_admin` Python packages (The script will attempt to install these if they are not already installed)

## Installation
Clone this repository or download the script to your local machine. Ensure you have the necessary permissions to execute the script.

```bash
chmod +x drop_tables_and_upload_dump.sh
```

## Usage
To run the script, use the following command with the required arguments:
```bash
./drop_tables_and_upload_dump.sh --tar_gz_path <path_to_tar_gz> --psql_password <password> --psql_username <username> --postgres_host <host> --target_db_name <dbname>
```

### Arguments
* `--tar_gz_path`: Path to the .tar.gz file containing the SQL script.
* `--psql_password`: Password for the PostgreSQL database.
* `--psql_username`: Username for the PostgreSQL database.
* `--postgres_host`: Host address of the PostgreSQL server.
* `--target_db_name`: Name of the target database.

### Example
```bash
./drop_tables_and_upload_dump.sh --tar_gz_path "/path/to/update.tar.gz" --psql_password "example_password" --psql_username "example_user" --postgres_host "localhost" --target_db_name "my_database"
```

## Functionality
1. Unpacks the `.tar.gz` file.
2. Executes SQL scripts to update the PostgreSQL database.
3. Flushes Redis and Firebase caches using embedded Python scripts.

## Notes
Ensure you have backups of your databases before running this script, as it performs operations that modify database contents.
The script installs redis and firebase_admin Python packages if they are not already installed.
