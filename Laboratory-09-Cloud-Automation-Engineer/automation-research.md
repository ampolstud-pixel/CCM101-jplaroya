# Automation Research

## 1. Bash Script

A Bash script is a file containing Linux commands that run in sequence to automate tasks. The `#!/bin/bash` line, called a shebang, tells the operating system to use Bash to execute the script. Bash scripts help reduce repetitive manual work and make tasks easier to perform.

## 2. Variables

Variables store values such as directory paths, filenames, and configuration settings. These values can be reused throughout a script. For example, `$BACKUP_DIR` stores the location of a backup directory. If the directory changes, you only need to update the variable instead of editing multiple commands. This makes the script easier to maintain.

## 3. Cron Job

A cron job is a scheduled task that Linux runs automatically at a specified time or interval. It helps automate recurring tasks such as backups, system maintenance, and log cleanup. Cron jobs reduce manual work and help administrators perform routine operations on schedule. In cloud environments, they support consistent maintenance and system management.
