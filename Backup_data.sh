#!/bin/bash

# source directory from where data should be backed up
source_dir="./"

# destination directory to store backup files
backup_dir="./backup_data"

# Backup file name 
backupfie="backup_$(date +%Y%m%d%H%M%S).tar.gz"

echo "file is $backupfie"

#create a backup location
mkdir -p "$backup_dir"

#zip the contents and copy from source to destination
tar -czvf "$backup_dir/$backupfie" "$source_dir"

if [ $? -eq 0 ]; then
    echo "File backup is Successful"
else
    echo "Failed to backup"
fi