# Types of Cloud Storage

## Comparison

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|---|---|---|---|
| Block Storage | Stores data in fixed-size blocks that can be accessed independently. | Virtual machine disks, databases, and operating system storage. | AWS EBS |
| File Storage | Stores data in files organized into folders and directories. | Shared files and applications that require a traditional file system. | AWS EFS |
| Object Storage | Stores data as objects together with metadata and unique identifiers. | Images, videos, backups, documents, and other unstructured data. | Amazon S3 |

## Why Object Storage?

Object Storage is suitable for the client's photo-sharing application because user-uploaded images are unstructured files stored as objects. It supports large amounts of data and allows applications to access files through APIs. This makes Object Storage useful for storing user photos separately from the web application server.
