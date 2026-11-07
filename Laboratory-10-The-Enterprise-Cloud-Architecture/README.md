# CCM101 Mission 10: Enterprise Cloud Deployment

## Project Overview

This project demonstrates the deployment of a multi-tier web application using cloud infrastructure and containerization technologies.

The application uses WordPress as the web server and MySQL 8.0 as the database. Both services run in separate Docker containers inside an Ubuntu Server virtual machine hosted by Oracle VM VirtualBox.

The project also implements persistent storage, firewall configuration, and automated backup using Bash scripting and Cron.

## Technologies Used

- Oracle VM VirtualBox
- Ubuntu Server
- Docker
- Docker Compose
- WordPress
- MySQL 8.0
- UFW Firewall
- Bash Scripting
- Cron Scheduler
- Git and GitHub

## System Architecture

The system follows a multi-tier architecture:

1. Host Machine – Runs Oracle VM VirtualBox.
2. Virtual Machine – Runs Ubuntu Server.
3. Docker Compose – Manages application containers.
4. WordPress Container – Hosts the website.
5. MySQL Container – Stores website data.
6. Persistent Volumes – Preserve database and website files.
7. Backup Automation – Creates database and website backups.

See "architecture_diagram.png" for the system architecture.

## Project Features

- WordPress website deployment
- MySQL database integration
- Docker container management
- Persistent data storage
- UFW firewall configuration
- Automated database backup
- Automated WordPress file backup
- Daily Cron scheduling

## Backup Configuration

The backup script is located in the "scripts" directory.

Backup files are stored in:

"/home/cloudadmin/my-cloud-apps/backups"

The Cron Job is scheduled to run every day at 2:00 AM.

## How to Access the Website

Open a web browser on the host machine and visit:

"http://localhost:8080"

## How to Check Docker Containers

sudo docker compose ps

How to Run the Backup

~/my-cloud-apps/scripts/backup.sh

## Repository Contents

- "README.md" – Project overview and documentation
- "architecture_diagram.png" – System architecture
- "docker-compose.yml" – Sanitized Docker configuration
- "automation-scripts.sh" – Backup automation script
- "operational-manual.md" – Deployment and maintenance instructions
- "final-reflection.md" – Personal learning reflection

## Security

Database credentials and environment files must not be uploaded to a public repository. Backup files and sensitive logs are excluded using ".gitignore".

## Author

CCM101 Student Project
