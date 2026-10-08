# Mission Reflection

This laboratory helped me understand why monitoring is important in managing cloud applications. Even when containers are running properly, the host server still needs enough CPU, memory, and disk space. If the host runs out of resources, containers may slow down or stop working. Checking the host baseline helps identify resource problems before they affect users.

The `docker logs` command is useful for troubleshooting application problems. If a user cannot log in to a web application, I can check the container logs for errors, failed requests, or other messages related to the problem. Logs show what happened during the operation and help identify the possible cause.

Logs and metrics provide different types of information. Logs record events and messages, such as HTTP requests and error responses. Metrics provide numerical data, such as CPU usage, memory usage, and network traffic. Logs help explain events, while metrics show the performance and resource usage of a system.

Large companies can monitor thousands of containers using centralized monitoring tools such as Prometheus and Grafana. These tools collect metrics from different systems and display them in one place. Engineers can use the data to identify performance and resource problems.

This laboratory also improved my Linux troubleshooting skills. I became more comfortable using commands such as `free`, `df`, `top`, `docker logs`, and `docker stats`. I learned to use actual system information when troubleshooting instead of guessing. Monitoring logs and metrics provides better information when diagnosing cloud application problems.
