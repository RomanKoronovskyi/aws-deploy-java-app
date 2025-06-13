# Multi-Tier Web Application on AWS (Lift & Shift Strategy)

## Project Overview

This project demonstrates the deployment of a multi-tier Java web application using the **Lift and Shift** strategy on AWS cloud. The goal is to migrate an existing application to AWS with minimal or no changes in it's architecture or source code.

## Key Highlights

- Lift & Shift approach used to deploy a legacy `.war` Java application.
- Deployed on a production-like AWS environment using Bash scripts and AWS CLI.
- Supports scalability, high availability, and HTTPS termination.

## AWS Services Used

- **EC2 Instances** – Hosts Tomcat, MySQL, and other services
- **Elastic Load Balancer (ELB)** – Distributes traffic across Tomcat servers
- **Auto Scaling Group (ASG)** – Automatically scales EC2 instances based on demand
- **Amazon S3** – Stores deployment artifacts or persistent data
- **Amazon Route 53** – DNS service for name resolution

## Flow of Execution

1. Login to AWS Account.
2. Create **Key Pairs** for EC2 access.
3. Create **Security Groups**.
4. Launch EC2 Instances with **User Data** scripts.
5. Configure **Route 53** IP-to-name mapping.
6. Build the application from source using Maven.
7. Upload the `.war` artifact to **Amazon S3**.
8. Download the artifact to EC2 Tomcat Instance.
9. Test accessibility of the deployed application.
10. Create an **Auto Scaling Group** for Tomcat Instances.
