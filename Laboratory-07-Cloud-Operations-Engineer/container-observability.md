# Container Observability

## Application Logs

The Nginx container logs recorded the HTTP requests received by the web server. These logs help monitor application activity and identify errors.

## 404 Error

The following log entry shows the failed request:

172.17.0.1 - - [08/Oct/2026:14:42:37 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
2026/10/08 14:42:37 [error] 29#29: *6 open() "/usr/share/nginx/html/hidden-admin-page" failed (2: No such file or directory), client: 172.17.0.1, server: localhost, request: "GET /hidden-admin-page HTTP/1.1", host: "localhost:8080"

The 404 status means the requested page was not found. Application logs are useful for troubleshooting because they show which requests reached the application and how the server responded.

Logs also help identify incorrect URLs, missing files, and other application issues. Regular log monitoring helps administrators detect problems and check the behavior of containerized applications.

## Container Resource Metrics

The client-website container was monitored using docker stats.

- Memory Usage: 2.734MiB
- CPU Usage: 0.00%

The container used a relatively small amount of system resources during the monitoring period. The CPU and memory usage stayed low, showing that the Nginx container handled the workload without using many system resources.
