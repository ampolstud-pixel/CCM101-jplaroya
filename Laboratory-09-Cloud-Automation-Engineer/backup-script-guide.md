# Backup Script Guide

## 1. Purpose

The `backup.sh` script automates the backup of the `app-data` directory. It creates a compressed archive with a timestamp and saves the file in the `backups` directory. The timestamp gives each backup a unique filename, helping prevent earlier backups from being overwritten.

## 2. Complete Bash Script

#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# Compress the source directory into a tar.gz file
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Backup completed successfully at $TIMESTAMP!"

The script defines the source and destination directories, generates a timestamp, creates the backup directory when needed, and compresses the source files into a `.tar.gz` archive.

Note: The final message appears even if the `tar` command fails. For a production script, check the command's exit status before reporting success.

## 3. File Permissions

**Command:**

chmod +x backup.sh

This command grants execute permission to the script. After setting the permission, run the script using:

./backup.sh

Without execute permission, the command might return a `Permission denied` error.

## 4. Cron Job Configuration

**Cron expression:**

0 2 * * * /root/backup.sh

This schedule runs the backup script every day at 2:00 AM, based on the system's configured timezone. The script must exist at `/root/backup.sh`, and the cron user must have permission to execute it.

## 5. Cron Field Explanation

- `0`: Run at minute zero.
- `2`: Run at 2:00 AM.
- `*`: Run every day of the month.
- `*`: Run every month.
- `*`: Run every day of the week.

## 6. Verification

**Run the script manually:**

./backup.sh

**Check the generated backup files:**

ls -lh backups/

**Inspect the archive contents:**

tar -tzf backups/backup_YYYYMMDD_HHMMSS.tar.gz

Replace `YYYYMMDD_HHMMSS` with the timestamp in the actual backup filename.

**Check the scheduled cron jobs:**

crontab -l

These commands help verify the script output, confirm the backup archive exists, inspect the archived files, and check the scheduled task.

## 7. Limitations

This script demonstrates basic local backups. It does not verify the integrity of the backup or automatically remove old archives. Production systems should check command exit codes, protect sensitive data, define a retention policy, and store backup copies in a separate location. Administrators should also verify that the cron service is running and review logs to confirm scheduled backups complete successfully.
