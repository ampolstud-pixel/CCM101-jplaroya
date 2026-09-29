# Services

The Docker Compose file defines two services: database and app.

The database service uses the MariaDB 10.6 image. It stores the persistent database information required by Nextcloud.

The app service uses the Nextcloud image. It provides the web application users access through a web browser.

# Database Configuration

The MariaDB container uses environment variables to configure the root password, database password, database name, and database user.

The important variables are:

MYSQL_ROOT_PASSWORD. Sets the MariaDB root password.
MYSQL_PASSWORD. Sets the password for the Nextcloud database user.
MYSQL_DATABASE. Defines the database name used by Nextcloud.
MYSQL_USER. Defines the database user used by Nextcloud.

# Nextcloud Configuration

The Nextcloud container uses environment variables to connect to the MariaDB database.

The important variables are:

MYSQL_PASSWORD. Provides the database user password.
MYSQL_DATABASE. Specifies the Nextcloud database name.
MYSQL_USER. Specifies the database user.
MYSQL_HOST. Specifies the database service address.

The MYSQL_HOST value is database. Docker Compose uses the service name to allow the Nextcloud container to connect to the MariaDB container through the internal Docker network.

# Port Mapping

The application uses:

8080:80

Port 8080 on the host is mapped to port 80 inside the Nextcloud container. This mapping allows users to access the Nextcloud web interface through port 8080.

# Docker Run vs Docker Compose

Docker Run starts an individual container through command-line options. Docker Compose uses a YAML configuration file to define and manage multiple related containers.

For this mission, Docker Compose is useful because Nextcloud and MariaDB need to work together as one application stack. It also keeps the service configuration organized in one file, making the application easier to start, stop, and manage.
