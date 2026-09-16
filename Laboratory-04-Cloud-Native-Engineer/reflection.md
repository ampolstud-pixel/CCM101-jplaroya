# Mission Reflection

This laboratory activity gave me a better understanding of how containers are used in cloud computing. I learned that Docker containers can be created and started much faster than Virtual Machines. A Virtual Machine needs a complete guest operating system, which requires more resources and takes longer to boot. In contrast, containers are lightweight because they share the host operating system kernel. This allows applications to start faster and use fewer resources.

I also learned how Docker port mapping works through the -p 8080:80 option. The Nginx web server runs on port 80 inside the container, while port 8080 is assigned on the host machine. The connection between these two ports allows me to open the Nginx web server through http://localhost:8080.

Another important lesson was understanding what happens when a container is stopped or deleted. Files stored inside a container may be lost when the container is removed if persistent storage is not used. Docker volumes or external storage can be used when data needs to remain available. In this activity, deleting the Nginx container removed the container, but the Nginx image was still available. This meant that I could use the image again to create a new container.

Containerization can also help developers and IT operations teams work together more effectively. Developers can place an application and its required dependencies inside a container. The operations team can then use the same container in different environments. This makes deployments more consistent and supports the practices used in DevOps.

My GitHub portfolio continues to grow as I document more laboratory activities and technical projects. This laboratory added my experience with Docker, container management, command-line operations, screenshots, and technical documentation. It also shows my progress from learning basic cloud infrastructure to exploring containers and other cloud-native technologies.
