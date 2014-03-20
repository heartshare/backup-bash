#!/bin/bash

directory="/media/HDD/Data/Backups/Daily"
date=$(date '+%Y-%m-%d')
month=$(date '+%Y-%m')

mkdir -p $directory/logs
mkdir -p $directory/$2/$month
/usr/bin/rdiff-backup --terminal-verbosity 4 --print-statistics --preserve-numerical-ids \
    --exclude="**.git" --exclude="**.psd" --exclude="**.pyc" \
    --exclude="**/cache/**" \
    $3 \
    $1 $directory/$2/$month >> $directory/logs/$date.log
