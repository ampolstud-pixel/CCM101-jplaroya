# Laboratory 09: The Cloud Automation Engineer

## Mission Overview

This laboratory focused on automating cloud administration tasks using Bash scripting and Cron jobs. I created a backup script to compress application data into a timestamped archive. I also learned how to schedule automatic backups to reduce manual work and keep data available for recovery.

## Objectives

- Understand Bash scripting and variables.
- Create and execute a backup script.
- Manage file permissions using `chmod`.
- Configure a daily Cron job.
- Document automation procedures using Markdown.

## Commands Executed

**1. Create sample application data**

mkdir app-data
echo "This is critical client data." > app-data/data.txt

**2. Create the backup script**

nano backup.sh

**3. Set execute permission and run the script**

chmod +x backup.sh
./backup.sh

**4. Verify and inspect the backup archive**

ls -lh backups/
tar -tzf backups/backup_*.tar.gz

**5. Check and configure Cron jobs**

crontab -l
env EDITOR=nano crontab -e

These commands helped me create sample data, prepare and run the backup script, inspect the generated archive, and configure a scheduled task.

## Skills Learned

I learned how to create Bash scripts, use variables, compress files, manage execution permissions, and schedule recurring tasks with Cron. I also practiced checking backup archives and reviewing scheduled jobs. These skills helped me understand how automation reduces repetitive work and supports regular data backups. Documenting the commands and results in Markdown also improved my ability to organize technical procedures in my GitHub portfolio.
