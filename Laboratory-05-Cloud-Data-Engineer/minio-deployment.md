# MinIO Deployment

## Docker Command
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server -e "MINIO_ROOT_USER=cloudadmin" -e "MINIO_ROOT_PASSWORD=CloudNova2026!" minio/minio server /data --console-address ":9001"

## Port Used 
9001

## Name of the bucket
cliet-photos

## Brief explanation
The -e flags set environment variables inside the MinIO Docker container. These variables configure the MinIO administrator login credentials.

-e "MINIO_ROOT_USER=cloudadmin" sets the administrator username to cloudadmin.

-e "MINIO_ROOT_PASSWORD=CloudNova2026!" sets the administrator password.

These credentials are used to log in to the MinIO Web Console and manage the object storage environment.
