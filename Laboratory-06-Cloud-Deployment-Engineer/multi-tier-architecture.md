# Multi-Tier Architecture

## Web Application Tier

The Web Application Tier handles user requests and provides the application interface. In this mission, Nextcloud serves as the web application. It receives HTTP requests from users through a web browser and provides the private cloud storage interface.

## Database Tier

The Database Tier stores persistent application data such as user accounts, configuration settings, and other Nextcloud metadata. MariaDB serves as the database server in this mission.

## Why Separate the Tiers?

Separating the web application and database into different containers makes the system easier to manage and maintain. Each container has a specific responsibility. The containers communicate through Docker's internal network.

This setup also allows each service to be managed separately. For example, you can update the web application without directly changing the database container. This structure also supports better organization and resource management.
