# Mission Reflection

This laboratory activity helped me understand how Docker Compose simplifies the deployment of a multi-tier application. In previous activities, I deployed individual containers using Docker commands. This mission showed me how a YAML file defines multiple services and their configurations in one place. Instead of starting each container separately, I used Docker Compose to deploy Nextcloud and MariaDB together.

The docker-compose.yml file made the deployment more organized because each service had a specific role. The database service stored application data, while the Nextcloud service provided the web interface. Docker Compose also created a network for communication between the two containers. The MYSQL_HOST=database variable allowed Nextcloud to connect to MariaDB through the database service name.

I also learned that YAML depends on proper indentation. Incorrect spaces or tabs can cause configuration errors and prevent Docker Compose from reading the file. This made me more careful when creating configuration files.

Environment variables also helped manage database credentials and connection information. These variables keep configuration settings separate from the application code and make container setup easier to manage.

The deployment process showed me how quickly Docker Compose starts a multi-container application. I used one command to start the Nextcloud and MariaDB stack. I also learned how to check running containers with docker compose ps and stop the complete stack with docker compose down.

Compared with my earlier cloud activities, I now have a better understanding of how applications use separate services. I also became more comfortable with the Linux terminal, Docker commands, YAML files, and container networking. This mission helped me understand how Infrastructure as Code supports organized and repeatable deployments.
