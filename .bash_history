sudo su -
bunzip2 nzdpu_wis.sql.bz2 
psql --help
psql -h 10.1.0.6
psql -h 10.1.0.6 -u nzdpu-uwtts3-backend
psql -h 10.1.0.6 -U nzdpu-uwtts3-backend
psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat
psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis
cat psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis
cat nzdpu_wis.sql |  psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis
cat psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis
psql --help
cat nzdpu_wis.sql |  psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import.log -a 
ls -alh
cat nzdpu_wis.sql |  psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import.log -a |tee import_stdout.log
tail import_stdout.log 
cat nzdpu_wis.sql |  psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import.log -a 2>&1 |tee import.log
tail import.log 
ls -alh
rm *sql
ls
tar -xf nzdpu_wis-0.12.6-230918.tar.gz 
cat nzdpu_wis-0.12.6-230918.sql | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import.log -a 2>&1 |tee import.log
cat nzdpu_wis-0.12.6-230918.sql | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import.log -a 2>&1 |tee import.log
psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis

echo UAT
pg_dumpall 
pg_dumpall -Unzdpu-uwtts3-backend@nzdpu-uat |gzip > pre-0.13.0-dump.sql.gz
pg_dumpall -Unzdpu-uwtts3-backend@nzdpu-uat -h 10.1.0.6 |gzip > pre-0.13.0-dump.sql.gz
apt search pg_dumpall
cat nzdpu_wis-0.13.0-230912.tar.gz | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import-0.13.0.log -a 2>&1 |tee import-stdout-0.13.0.log.log
zcat nzdpu_wis-0.13.0-230912.tar.gz | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import-0.13.0.log -a 2>&1 |tee import-stdout-0.13.0.log.log
ls
tar -xvf nzdpu_wis-0.13.0-230912.tar.gz 
tar -xvf nzdpu_wis-0.13.2-230925.tar.gz 
tar -xvf nzdpu_wis-0.13.0-230912.tar.gz 
zcat nzdpu_wis-0.13.2-230925.tar.gz | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import-0.13.2.log -a 2>&1 |tee import-stdout-0.13.2.log.log
ls
psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis
ls
zcat nzdpu_wis-0.13.2-230927.tar.gz | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import-0.13.2-0927.log -a 2>&1 |tee import-stdout-0.13.2-0927.log
ls
zcat nzdpu_wis-0.14.0-230928.tar.gz | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import-0.14.0.log -a 2>&1 |tee import-stdout-0.14.0.log
vim drop_and_create.sql
zcat nzdpu_wis-0.14.5-231002.tar.gz | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import-0.14.5.log -a 2>&1 |tee import-stdout-0.14.5.log
sudo su -
sudo apt install mysql-client
apt search mysql
apt search mysql | grep -i client
sudo apt install -y mariadb-client-10.5
mysql -u drupal -p -h 10.1.0.8
zcat drupal-NZDPU-1377.sql.gz | mysql -h 10.1.0.8 -u drupal -p drupal
curl https://drupal.nzdpu-uat.com/
ab
apt install ab
sudo apt install ab
apt search apache benchmark
apt install apache2-utils
sudo apt install apache2-utils
ab
ab -c 100 -n 1000 https://nzdpu-uat/wis/coverage/companies
ab -c 100 -n 1000 https://nzdpu-uat.com/wis/coverage/companies
ab -c 100 -n 1000 https://nzdpu-uat.com/wis/coverage/companies -C NZDPU-AUTHORIZED=8aF5tLH7nfajCcm0umDgo9bSPOBPE4Dk5IFVwXcS
ab -c 100 -n 1000 https://nzdpu-uat.com/wis/coverage/companies -C 'NZDPU-AUTHORIZED=8aF5tLH7nfajCcm0umDgo9bSPOBPE4Dk5IFVwXcS'
ab -c 100 -n 1000 https://nzdpu-uat.com/wis/coverage/companies -C 'NZDPU\-AUTHORIZED=8aF5tLH7nfajCcm0umDgo9bSPOBPE4Dk5IFVwXcS'
ab -c 100 -n 1000 https://nzdpu-uat.com/wis/coverage/companies -C -- 'NZDPU\-AUTHORIZED=8aF5tLH7nfajCcm0umDgo9bSPOBPE4Dk5IFVwXcS'
ab -c 100 -n 1000 -C NZDPU-AUTHORIZED=8aF5tLH7nfajCcm0umDgo9bSPOBPE4Dk5IFVwXcS https://nzdpu-uat.com/wis/coverage/companies  
ab -c 100 -n 1000 -C NZDPU-AUTHORIZED=8aF5tLH7nfajCcm0umDgo9bSPOBPE4Dk5IFVwXcS https://nzdpu-uat.com/wis/coverage/companies?jurisdiction=&start=0&limit=10&order_by=legal_name&order=asc  
ab -c 100 -n 1000 -C NZDPU-AUTHORIZED=8aF5tLH7nfajCcm0umDgo9bSPOBPE4Dk5IFVwXcS 'https://nzdpu-uat.com/wis/coverage/companies?jurisdiction=&start=0&limit=10&order_by=legal_name&order=asc  '
sysctl net.ipv4.ip_local_port_range
sudo sysctl net.ipv4.ip_local_port_range
bc "60999-32768
"
sudo sysctl net.ipv4.ip_local_port_range
zcat nzdpu_wis-0.15.12-231006.tar.gz | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import-0.15.12.log -a 2>&1 |tee import-stdout-0.15.12.log
ls
mysql -u drupal -p -h 10.1.0.8
zcat drupal-NZDPU-1377.sql.gz | mysql -h 10.1.0.8 -u drupal -p drupal
zcat nzdpu_wis-0.15.13-231009.tar.gz | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import-0.15.13.log -a 2>&1 |tee import-stdout-0.15.13.log
history | tail
zcat nzdpu_wis-0.15.13-231009.tar.gz | psql -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis -L import-0.15.13.log -a 2>&1 |tee import-stdout-0.15.13.log
ls
vim .pgpass
pg_dump -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql
pg_dump -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis
pg_dump -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis|gzip > export_for_alloydb.sql.gz
ls -alh export_for_alloydb.sql.gz 
pg_dump -c -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis|gzip > export_for_alloydb.sql.gz
less export_for_alloydb.sql.gz 
zcat export_for_alloydb.sql.gz |less
pg_dump --help
pg_dump -c -C -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis|gzip > export_for_alloydb.sql.gz
ls -alh export_for_alloydb.sql.gz 
pg_dump  -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis|gzip > export_for_alloydb_no_opts.sql.gz
rm export_for_alloydb*
ls
pg_dump  -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis|gzip > export_for_alloydb_no_opts.sql.gz
pg_dump -C -c -h 10.1.0.6 -U nzdpu-uwtts3-backend@nzdpu-uat -d nzdpu_wis|gzip > export_for_alloydb_create.sql.gz
vim .pgpass
psql -U alloydb -h 10.0.9.2
chmod 0600 .pgpass 
psql -U alloydb -h 10.0.9.2
psql -U alloydb -h 10.0.9.2 postgres
zcat export_for_alloydb_create.sql.gz | psql -U nzdpuwis -h 10.0.9.2 nzdpu_wis
date 
date --help
date -u 2008760530000
date -u 200876053000
date %u 2008760530
ls
vim alloydb_drop_and_create.sql
cat drop_and_create.sql 
vim drop_and_create.sql 
zcat nzdpu_wis-0.17.2-231019.tar.gz | psql -U nzdpuwis nzdpu_wis
zcat nzdpu_wis-0.17.2-231019.tar.gz | psql -U nzdpuwis nzdpu_wis -h 10.0.9.2
psql -U nzdpuwis -h 10.0.9.2 nzdpu_wis
psql -U alloydb -h 10.0.9.2 nzdpu_wis
psql -U nzdpuwis -h 10.0.9.2 nzdpu_wis
source .virtualenvs/nzdpu-tf/bin/activate
pip install asyncpg
python -V
sudo apt search python | grep pip
sudo apt install python3-pip
pip install asyncpg
curl localhost:8080
curl localhost:8080/10
curl localhost:8080
ls -alh
curl localhost:8080
ls -alh
tar -xzf nzdpu_wis-0.18.0-231020.tar.gz 
ls -alh
ls
tar -xvf nzdpu_wis-0.18.0-231020_2.tar.gz 
echo "import db dump machine" 
tar -xvzf nzdpu_wis-0.18.0-231020_2.tar.gz 
cat nzdpu_wis-0.18.0-231020.sql | psql -U nzdpuwis -h 10.0.9.2 nzdpu_wis
echo "Role errors are ok and expected"
sudo vim /etc/motd
motd
cat /etc/motd 
vim .pgpass 
cat .pgpass 
pg_dump -U nzdpuwis -h 10.0.9.2 nzdpu_wis | psql -U nzdpu nzdpu_wis -h 10.1.0.15
psql -U nzdpu -h 10.1.0.15
vim .pgpass
psql -U nzdpu -h 10.1.0.15
psql -U nzdpu -h 10.1.0.15 nzdpu_wis
vim .pgpass 
psql -U nzdpu -h 10.1.0.15 nzdpu_wis
pg_dump -U nzdpuwis -h 10.0.9.2 nzdpu_wis | psql -U nzdpu nzdpu_wis -h 10.1.0.15
pg_dump --help | grep -i drop
pg_dump -c -U nzdpuwis -h 10.0.9.2 nzdpu_wis | psql -U nzdpu nzdpu_wis -h 10.1.0.15
cat /etc/motd 
pg_dump -c -U nzdpuwis -h 10.0.9.2 nzdpu_wis | psql -U nzdpu nzdpu_wis -h 10.1.0.15
pg_dump -c -U nzdpuwis -h 10.0.9.2 nzdpu_wis -t wis_organization
pg_dump  -U nzdpuwis -h 10.0.9.2 nzdpu_wis -t wis_organization
pg_dump  -U nzdpuwis -h 10.0.9.2 nzdpu_wis -t wis_organization |gzip > wis_org.sql.gz
pg_dump --data-only -U nzdpuwis -h 10.0.9.2 nzdpu_wis -t wis_organization -t wis_user | gzip > wis_org_and_user.sql.gz
zcat wis_org_and_user.sql.gz | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
pg_dump -c -U nzdpuwis -h 10.0.9.2 nzdpu_wis -t wis_organization -t wis_user | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
pg_dump --data-only -U nzdpuwis -h 10.0.9.2 nzdpu_wis -t wis_organization -t wis_user | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
psql
sudo su -
last | head
cat /etc/motd
ls
cat /etc/motd
ls -alh
cat nzdpu_wis-0.18.2-231024.sql | psql -U nzdpuwis -h 10.1.0.15 nzdpu_wis
cat nzdpu_wis-0.18.2-231024.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
tar -xvzf nzdpu_wis-0.18.12-231026.tar.gz 
cat nzdpu_wis-0.18.12-231026.sql 
cat nzdpu_wis-0.18.12-231026.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
cat nzdpu_wis-0.18.12-231026.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
cat nzdpu_wis-0.18.12-231026.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
python3.9 -m venv redis_venv
sudo apt-get install python3-venv python3-pip
python3.9 -m venv redis_venv
source redis_venv/bin/activate
pip install redis
vim flush_redis.py
python flush_redis.py 
python -i flush_redis.py 
ls
sudo mv nzdpu_wis-0.21.0-231030.tar.gz ~stefansuvac/
sudo chown stefansuvac ~stefansuvac/nzdpu_wis-0.21.0-231030.tar.gz 
cp drop_and_create.sql ~stefansuvac
sudo cp drop_and_create.sql ~stefansuvac/
sudo chown stefansuvac ~stefansuvac/[Adrop_and_create.sql 
cp flush_redis.py ~stefansuvac/
sudo cp flush_redis.py ~stefansuvac/
ls -alh
source redis_venv/bin/activate
pip freeze
tar -xvf nzdpu_wis-0.21.5-231102.tar.gz 
cat nzdpu_wis-0.21.5-231102.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
redis_venv/bin/python flush_redis.py 
gunzip nzdpu_wis-0.22
gunzip nzdpu_wis-0.22.0-231106.tar.gz 
rm nzdpu_wis-0.22.0-231106.tar
tar -xvf nzdpu_wis-0.22.0-231106.tar.gz 
cat nzdpu_wis-0.22.0-231106. | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
cat nzdpu_wis-0.22.0-231106.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
ls /home/ak
ls /home
ls /home/akettmann/
l /home/akettmann/
ls /home/akettmann/
cp /home/akettmann/nzdpu_wis-0.22.15.231109.tar.gz .
cat /home/akettmann/.bash_history > /home/vik/.bash_history
history
sudo cat /home/akettmann/.bash_history > /home/vik/.bash_history
history
exit
history
tar -xvf nzdpu_wis-0.22.15.231109.tar.gz 
ls
#cat nzdpu_wis-0.22.15.231109.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
cp /home/akettmann/drop_and_create.sql .
history
cat nzdpu_wis-0.22.15.231109.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
ls
ls /home/akettmann/ -l
cp /home/akettmann/flush_redis.py .
ls
cp -r /home/akettmann/redis_venv .
ls
ls -la
cat flush_redis.py 
nano flush_redis.py 
cat flush_redis.py 
pip install firebase_admin
ls
mv flush_redis.py flush_firebase.py 
ls -l
cp /home/akettmann/flush_redis.py .
ls -l
ls
ls -l
nano drop_and_create.sql 
tar xzvf nzdpu_wis-0.24.0-231113.tar.gz 
ls
history
cat nzdpu_wis-0.22.15.231109.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
history
ls
cat nzdpu_wis-0.24.0.231113.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
ls -
ls -l
cat flush_firebase.py 
history | grep firebase
pip install firebase_admin
python3 flush_firebase.py 
python3 flush_redis.py 
pip install redis
python3 flush_redis.py 
cat nzdpu_wis-0.24.0.231113.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
python3 flush_redis.py 
python3 flush_firebase.py 
ls
cat nzdpu_wis-0.24.0.231113.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
echo $?
ls -la
cat nzdpu_wis-0.24.0-231113.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
echo $?
ls
curl ifconfig.co
history
psql -U nzdpu -h 10.1.0.15 nzdpu_wis
ls
cat nzdpu_wis-0.24.0-231113.sql | grep wis_organization
ls
rm -rf *.sql
ls
tar -xvf nzdpu_wis-0.24.0-231113__.tar.gz 
ls
cp /home/akettmann/drop_and_create.sql .
ls -la
cat nzdpu_wis-0.24.0-231113.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
ls -la
python3 flush_firebase.py 
python3 flush_redis.py 
ls
nano drop_tables_and_upload_dump.sh
chmod +x drop_
chmod +x drop_tables_and_upload_dump.sh 
clear
cat drop_and_create.sql 
ls -la
cat /dev/null > drop_tables_and_upload_dump.sh 
nano drop_tables_and_upload_dump.sh 
# ./drop_tables_and_upload_dump.sh nzdpu_wis-0.24.0-231113__.tar.gz nzdpu nzdpu 10.1.0.15 nzdpu_wis
pip install redis
nano drop_tables_and_upload_dump.sh 
cat /dev/null > drop_tables_and_upload_dump.sh 
nano drop_tables_and_upload_dump.sh 
git init
apt
sudo apt update && apt install git
sudo apt update && sudo apt install git
ls
nano flush_firebase.py 
cat /dev/null > flush_redis.py 
nano flush_redis.py 
nano drop_tables_and_upload_dump.sh 
nano flush_firebase.py 
cat /dev/null > flush_firebase.py 
nano flush_firebase.py 
cp /home/akettmann/flush_redis.py .
nano flush_redis.py 
nano drop_tables_and_upload_dump.sh 
cat drop_tables_and_upload_dump.sh 
ls
cp /home/akettmann/flush_redis.py .
cat flush_redis.py 
nano drop_tables_and_upload_dump.sh 
ls
rm -r *.tar.gz
ls
rm -f *.sql
rm -f *.py
ls
nano .gitignore
ls
git init
git config --global init.defaultBranch develop
rm -rf .git
git init
git status
mkdir lab
rm -rf .git
mv drop_tables_and_upload_dump.sh lab/
cd lab
ls
cat drop_tables_and_upload_dump.sh 
nano drop_tables_and_upload_dump.sh 
cat /dev/null > drop_tables_and_upload_dump.sh 
nano drop_tables_and_upload_dump.sh 
#./drop_tables_and_upload_dump.sh --tar_gz_path "/path/to/file.tar.gz" --psql_password "nzdpu" --psql_username "nzdpu" --postgres_host "10.1.0.15" --target_db_name "nzdpu_wis"
git status
git init
git status
git add drop_tables_and_upload_dump.sh
nano drop_tables_and_upload_dump.sh 
nano README.md
clear
git remote add origin https://github.com/DawnBreather/postgres-db-update-and-cache-flush.git
git branch
git branch -M develop
git add .
git commit -m "initial commit"
git config --global user.email "dawnbreather@gmail.com"
git config --global user.name "Viacheslav Kim"
git push origin -u develop
git branch -M develop
git push -u origin develop
git branch
git log
git add .
git commit -m "initial commit"
git push -u origin develop
ls
nano README.md 
nano drop_tables_and_upload_dump.sh 
git commit --amend --no-edit
git add .
git commit --amend --no-edit
git push -u origin +develop
ls -la
ls -la /home/akettmann/
ls -l
cd lab
ls -l
nano drop_tables_and_upload_dump.sh 
ls
nano drop_tables_and_upload_dump.sh 
history
nano drop_tables_and_upload_dump.sh 
nano /home/akettmann/flush_redis.py 
nano drop_tables_and_upload_dump.sh 
chdmod +x drop_tables_and_upload_dump.sh 
chmod +x drop_tables_and_upload_dump.sh 
nano drop_tables_and_upload_dump.sh 
#./drop_tables_and_upload_dump.sh --tar_gz_path "nzdpu_wis-0.27.0-231118.tar.gz" --psql_password "nzdpu" --psql_username "nzdpu" --postgres_host "10.1.0.15" --target_db_name "nzdpu_wis" --redis_host "10.0.8.3"
nano drop_tables_and_upload_dump.sh 
tar -xzvf nzdpu_wis-0.27.0-231118.tar.gz 
cat drop_tables_and_upload_dump.sh 
cat /dev/null > drop_tables_and_upload_dump.sh 
nano drop_tables_and_upload_dump.sh 
ls 
#./drop_tables_and_upload_dump.sh --sql_file_path "nzdpu_wis_no_users-0.27.0-231118.sql" --psql_password "nzdpu" --psql_username "nzdpu" --postgres_host "10.1.0.15" --target_db_name "nzdpu_wis" --redis_host "10.0.8.3" --
nano drop_tables_and_upload_dump.sh 
./drop_tables_and_upload_dump.sh --sql_file_path "nzdpu_wis_no_users-0.27.0-231118.sql" --psql_password "nzdpu" --psql_username "nzdpu" --postgres_host "10.1.0.15" --target_db_name "nzdpu_wis" --redis_host "10.0.8.3" --project_id nzdpu_uat
cp /home/akettmann/flush_redis.py .
chmod +x flush_redis.py 
ls -la /home/akettmann/
nano flush_firebase.py 
nano flush_firebase.py
python3 flush_firebase.py 
ls
ls -l
cp -r /home/akettmann/drop_and_create.sql ./
ls -la
ls -la
python3 flush_firebase.py 
./flush_redis.py 
python3 flush_redis.py 
exit
nano ~/.bash_history 
ls
cd lab
ls
cat drop_and_create.sql | psql -U nzdpu -h 10.1.0.15 postgres
cat nzdpu_wis-0.27.0-231118.sql | psql -U nzdpu -h 10.1.0.15 postgres
python3 flush_redis.py 
python3 flush_firebase.py 
psql -U nzdpu -h 10.1.0.15 nzdpu_wis
cat nzdpu_wis-0.27.0-231118.sql | psql -U nzdpu -h 10.1.0.15 postgres
cat drop_tables_and_upload_dump.sh 
cat drop_and_create.sql | psql -U nzdpu -h 10.1.0.15 postgres
cat nzdpu_wis-0.27.0-231118.sql | psql -U nzdpu -h 10.1.0.15 postgres
psql -U nzdpu -h 10.1.0.15 nzdpu_wis
#cat nzdpu_wis-0.27.0-231118.sql | psql -U nzdpu -h 10.1.0.15 postgres
cat nzdpu_wis-0.27.0-231118.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
psql -U nzdpu -h 10.1.0.15 nzdpu_wis
cat nzdpu_wis_no_users-0.27.0-231118.sql | psql -U nzdpu -h 10.1.0.15 nzdpu_wis
psql -U nzdpu -h 10.1.0.15 nzdpu_wis
exit
