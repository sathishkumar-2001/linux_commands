#!/bin/bash

# Variables
DB_USER="dbuser"
DB_PASSWORD="dbpassword"
DB_NAME="dbname"
BACKUP_DIR="/path/to/backup"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/$DB_NAME_$TIMESTAMP.sql"

# Backup the database
mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_FILE

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Database backup successful: $BACKUP_FILE"
else
    echo "Database backup failed"
    exit 1
fi
