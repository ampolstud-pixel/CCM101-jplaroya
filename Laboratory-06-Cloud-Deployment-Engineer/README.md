# Laboratory 06: Cloud Deployment Engineer

## Mission Overview

This mission focused on deploying a multi-tier private cloud storage system using Docker Compose. The deployment used Nextcloud as the web application and MariaDB as the database.

The two services worked together through Docker's internal network. Nextcloud handled the web interface, while MariaDB stored the application's data.

## Objectives

Understand multi-tier application architecture.
Create a Docker Compose configuration.
Deploy Nextcloud and MariaDB.
Connect the application container to the database container.
Access the Nextcloud web interface.
Document the deployment process.

## Commands Executed

- mkdir nextcloud-deployment
- cd nextcloud-deployment
- nano docker-compose.yml
- docker compose up -d
- docker compose ps
- docker compose down

These commands created the project directory, opened the Docker Compose configuration file, started the services, checked the running containers, and stopped the deployment.

## Skills Learned

- Docker Compose
- YAML configuration
- Multi-tier architecture
- Container networking
- Environment variables
- Linux command-line operations
- Infrastructure as Code
