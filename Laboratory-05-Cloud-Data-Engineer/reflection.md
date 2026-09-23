# Reflection

This laboratory activity helped me understand why Object Storage is suitable for applications that store large numbers of photos. Unlike traditional Block Storage, Object Storage is designed for large amounts of unstructured data such as images, videos, and backups. It organizes data as objects inside buckets, making it suitable for a photo-sharing application.

Using Docker also made deploying the MinIO storage server easier. Instead of installing and configuring each component manually, I used a Docker image and started MinIO with a single command. The -e flags allowed me to set the administrator username and password as environment variables. Port mapping allowed me to access the MinIO Web Console through a web browser.

I learned that a bucket is a logical container for organizing and storing objects. In this activity, I created a bucket named client-photos and uploaded a sample file. This showed how users can store and manage files through an Object Storage system.

Large enterprises protect object storage data through redundancy, replication, backups, and distributed storage systems. They store copies of data across different servers or locations to reduce the risk of permanent data loss caused by hardware failures. Access controls and security measures also help protect stored data from unauthorized access.

My confidence in using the Linux command line improved through this activity. I became more comfortable running Docker commands, checking containers, working with ports, and reading terminal output. The activity also helped me understand how command-line tools support the deployment and management of cloud-based services.
