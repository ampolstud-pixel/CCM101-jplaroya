# Laboratory 04 – Cloud-Native Engineer

## Mission Overview

This laboratory activity focused on the fundamentals of cloud-native technology and containerization. It helped me understand how Virtual Machines differ from Containers and introduced the use of Docker for running applications. As part of the activity, I used Docker to deploy an Nginx web server inside a container through the KillerCoda playground. I also practiced the basic steps involved in managing a container, from creating and running it to stopping and removing it.

## Objectives

The main goals of this laboratory activity were to:

Learn the key differences between Virtual Machines and Containers.
Become familiar with the Docker environment.
Download and work with Docker images.
Run an Nginx web server using a Docker container.
Understand how Docker port mapping works.
Practice the basic container management commands.
Check the status and condition of Docker containers.
Start, stop, and remove containers properly.
Record and present the laboratory activities using Markdown.

## Docker Commands Executed

### Checkpoint 3
docker --version
docker info
docker ps

---

### Checkpoint 4
docker pull nginx
docker run -d --name nginx-server -p 8080:80 nginx
docker ps
curl http://localhost:8080

---

### Checkpoint 5
docker ps
docker stop nginx-server
docker ps -a
docker rm nginx-server
docker ps -a

---

### Skills Learned

During this laboratory activity, I gained practical experience in using Docker and managing containers. I learned how to download Docker images, create and run containers, configure port mapping, view container status, stop containers, and remove them. I also developed a better understanding of the differences between Containers and Virtual Machines, particularly in their architecture, startup time, resource consumption, and level of isolation. In addition, the activity helped me improve my skills in using the Linux terminal and documenting technical procedures with Markdown.

### Challenges Encountered

One challenge I experienced was understanding the concept of Docker port mapping. I had to understand how port 8080 of the host system connects to port 80 of the Nginx container. I also found it challenging to remember the correct commands for stopping and deleting containers. I addressed these difficulties by following the commands in the proper order and using docker ps and docker ps -a to check the current status of my containers. This helped me verify each step and avoid mistakes while completing the activity.
