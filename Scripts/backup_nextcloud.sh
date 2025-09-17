#!/bin/bash
# Backup Nextcloud data and database
DATA_DIR="/var/www/nextcloud/data"
DB_NAME="nextcloud"
DB_USER="nextclouduser"
DB_PASS="yourpassword"
BACKUP_DIR="/root/backups/nextcloud-$(date +%F)"

mkdir -p $BACKUP_DIR

# Backup data
rsync -a $DATA_DIR $BACKUP_DIR/data

# Backup database
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/db.sql

echo "Nextcloud backup completed at $BACKUP_DIR"
