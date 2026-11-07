#!/bin/bash

# CCM101 Mission 10 WordPress Backup Automation

BACKUP_DIR="/home/cloudadmin/my-cloud-apps/backups"

DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p "$BACKUP_DIR"

# Database Backup
sudo docker exec wordpress-db sh -c \
'exec mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" wordpress' \
"$BACKUP_DIR/wordpress_db_$DATE.sql"


# WordPress Files Backup
sudo docker exec wordpress tar -czf - -C /var/www/html . \
"$BACKUP_DIR/wordpress_files_$DATE.tar.gz"


echo "Backup completed: $DATE"
