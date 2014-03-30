#!/bin/bash

directory="/media/HDD/Data/Backups/Daily"
date=$(date '+%Y-%m-%d')
month=$(date '+%Y-%m')

mkdir -p $directory/logs
mkdir -p $directory/$2/$date

databases=$(ssh $1 "mysql -N -u root -p$3 -e 'SHOW DATABASES'" | grep -v 'information_schema')
for db in $databases
do
  ssh $1 "mysqldump --single-transaction --quick --lock-tables=false --force --opt -uroot -p$3 --databases $db" > $directory/$2/$date/$db.sql
done
