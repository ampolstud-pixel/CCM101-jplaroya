# Laboratory 07 - Cloud Operations Engineer

## Mission Overview

This laboratory focused on cloud operations, system monitoring, application logging, and container observability. The mission involved checking the host system's baseline health, deploying an Nginx web server using Docker, generating HTTP traffic, examining application logs, and monitoring container resource usage.

## Objectives

- Monitor host CPU, memory, and disk resources.
- Establish a baseline for the server.
- Deploy an Nginx web server using Docker.
- Generate successful and failed HTTP requests.
- Examine application logs.
- Monitor container CPU and memory usage.
- Document cloud operations activities using Markdown.

## Monitoring Commands Executed

- free -h
- df -h
- top
- docker run -d --name client-website -p 8080:80 nginx
- docker ps
- curl http://localhost:8080
- curl http://localhost:8080/hidden-admin-page
- docker logs client-website
- docker stats

These commands checked system memory, disk usage, CPU activity, container status, application responses, Nginx logs, and container resource usage.

The docker run command started an Nginx container named client-website and mapped port 8080 on the host to port 80 inside the container.

The first curl command generated a successful HTTP request. The second request used a nonexistent page to generate a 404 response. The docker logs command displayed the Nginx request logs. The docker stats command displayed real-time CPU, memory, network, and other resource usage.

## Skills Learned

This laboratory improved my skills in Linux system monitoring, Docker container deployment, application log analysis, and real-time resource monitoring. I also learned how metrics and logs help identify problems and monitor cloud applications.
