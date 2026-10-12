# Laboratory 08: The Cloud Security Engineer

## Mission Overview

This laboratory focused on securing a Linux web server using UFW (Uncomplicated Firewall). I deployed an Nginx container using Docker, tested web access, and configured firewall rules to block unnecessary incoming connections. The activity helped me understand how firewall settings protect a server while allowing required services to operate.

## Objectives

- Understand the Principle of Least Privilege.
- Identify security risks and exposed network ports.
- Deploy an Nginx web server using Docker.
- Configure UFW with a Default Deny incoming policy.
- Allow SSH and web traffic through specific firewall rules.
- Document security configurations using Markdown.

## Commands Executed

**1. Check Docker installation and running containers**

docker --version
docker ps

**2. Deploy the Nginx container and test web access**

docker run -d --name secure-web-app -p 8080:80 nginx
curl http://localhost:8080

**3. Configure firewall rules**

sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

**4. Verify the firewall and allow web traffic**

sudo ufw status verbose
sudo ufw allow 8080/tcp
sudo ufw status numbered

## Skills Learned

This laboratory improved my understanding of Linux server security, Docker deployment, network ports, and firewall management. I learned how to apply a Default Deny policy, allow necessary connections, and check firewall rules through terminal commands. I also learned why SSH access should be allowed before enabling the firewall on a remote server. Documenting the commands and results in Markdown helped me organize my technical work and prepare evidence for my GitHub portfolio.
