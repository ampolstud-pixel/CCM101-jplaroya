# Mission Reflection: The Cloud Security Engineer

This laboratory helped me understand the importance of server security in cloud computing. A host-based firewall protects a server by controlling incoming and outgoing network traffic. Even if an attacker reaches the server's network, firewall rules help block unauthorized connections. This adds another layer of protection and reduces security risks.

Managing open network ports is also important. Unnecessary open ports create more opportunities for attackers to access a system. Administrators should disable unused services and allow only required connections. This reduces the server's attack surface and makes the system easier to manage and monitor.

In an enterprise environment, exposing a database port such as MySQL port 3306 to the public internet creates serious security risks. Attackers might attempt password guessing, exploit software vulnerabilities, or access sensitive data. A database should accept connections only from authorized application servers or trusted networks. Proper access controls and firewall rules help protect database information.

This mission helped me understand how incorrect server configurations create security risks. Even a newly deployed server is vulnerable if its services and network rules are not properly configured. Server security requires regular monitoring, access control, software updates, and correct firewall settings. A working application does not always mean the system is secure.

My GitHub portfolio now documents my progress through eight cloud computing laboratories. These activities helped me develop practical skills in infrastructure setup, Docker, cloud storage, application deployment, system monitoring, and server security. I also improved my ability to document procedures using Markdown and organize screenshots as evidence. These experiences increased my confidence in using Linux commands and understanding cloud operations. I still need more practice, but I now understand why security must be part of every stage of deployment rather than an afterthought.
