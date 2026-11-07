# Operational Manual

## CCM101 Mission 10 – WordPress Cloud Deployment

### 1. System Requirements

- Oracle VM VirtualBox
- Ubuntu Server
- Docker
- Docker Compose
- WordPress
- MySQL 8.0

### 2. Start the Ubuntu Server

Start the Ubuntu Server virtual machine using Oracle VM VirtualBox.

Log in using the configured Ubuntu account.

### 3. Navigate to the Project Directory

cd ~/my-cloud-apps

### 4. Check Docker Containers

sudo docker compose ps

Make sure that the WordPress and MySQL containers are running.

### 5. Access the WordPress Website

Open a browser on the host computer.

Visit:

http://localhost:8080

The WordPress website should appear.

### 6. Check Docker Logs

To check WordPress logs:

sudo docker logs wordpress

To check MySQL logs:

sudo docker logs wordpress-db

### 7. Run Manual Backup

Execute the backup script:

~/my-cloud-apps/scripts/backup.sh

Enter the Ubuntu password if sudo authentication is requested.

### 8. Verify Backup Files

ls -lh ~/my-cloud-apps/backups

The directory should contain:

- wordpress_db_DATE.sql
- wordpress_files_DATE.tar.gz

### 9. Check Cron Job

Display the scheduled Cron Jobs:

sudo crontab -l

The backup schedule is:

0 2 * * * /home/cloudadmin/my-cloud-apps/scripts/backup.sh >> /home/cloudadmin/my-cloud-apps/backups/cron.log 2>&1

This runs the backup every day at 2:00 AM according to the server's timezone.

### 10. Check Cron Service

sudo systemctl status cron

The expected status is:

Active: active (running)

### 11. Manage Docker Containers

Stop containers:

sudo docker compose stop

Start containers:

sudo docker compose start

Restart containers:

sudo docker compose restart

### 12. Firewall Verification

Check UFW status:

sudo ufw status

Verify that only the required services and ports are allowed.

### 13. Backup Storage

All backup files are stored in:

/home/cloudadmin/my-cloud-apps/backups

Keep backup files in a secure location and periodically verify that they can be restored.

### 14. Troubleshooting

#### Problem: WordPress is inaccessible

Check the containers:

sudo docker compose ps

#### Problem: MySQL container is not running

Check its logs:

sudo docker logs wordpress-db

#### Problem: Backup script does not execute

Check the script permissions:

chmod +x ~/my-cloud-apps/scripts/backup.sh

Check the script syntax:

bash -n ~/my-cloud-apps/scripts/backup.sh

#### Problem: Cron is not running

sudo systemctl restart cron

### 15. Maintenance

- Check Docker container status regularly.
- Monitor disk usage.
- Verify backup files.
- Keep database credentials secure.
- Maintain updated documentation.
- Test backup restoration periodically.
