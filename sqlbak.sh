
#!/bin/bash

TIMESTAMP=$(date +"%F")
BACKUP_DIR="/backup/databases/$TIMESTAMP"
MYSQL_USER="root"
MYSQL_PASSWORD="Techugo@123"
MYSQL="$(which mysql)"
MYSQLDUMP="$(which mysqldump)"

mkdir -p $BACKUP_DIR

find "$BACKUP_DIR" -mtime +3 -type d -exec rm -rf {} \;

databases=`$MYSQL -u$MYSQL_USER -p$MYSQL_PASSWORD -e "show databases"| grep -Ev "(database|Database|information_schema|performance_schema|phpmyadmin|mysql)"`

for db in $databases; do

$MYSQLDUMP -u $MYSQL_USER -p$MYSQL_PASSWORD --databases $db > $BACKUP_DIR/$db.sql

done
