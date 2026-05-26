# Multi-Service Node.js E-commerce Application

## Project Overview

This project demonstrates deployment of a multi-service Node.js e-commerce application using:

- Docker
- DockerHub
- Terraform
- AWS EC2

The application consists of:

- Frontend Service
- User Service
- Product Service
- Cart Service
- Order Service

Each service is containerized using Docker and deployed automatically on AWS EC2 using Terraform.

---

# Architecture

Frontend communicates with backend microservices running on different ports.

## Services & Ports

| Service | Port |
|----------|------|
| Frontend Service | 3000 |
| User Service | 3001 |
| Product Service | 3002 |
| Cart Service | 3003 |
| Order Service | 3004 |

---

# Tech Stack

- Node.js
- Express.js
- Docker
- DockerHub
- Terraform
- AWS EC2
- Ubuntu

---

# Project Structure

```bash
E-CommerceStore/
│
├── frontend/
├── backend/
│   ├── user-service/
│   ├── product-service/
│   ├── cart-service/
│   └── order-service/
│
├── terraform/
│   ├── provider.tf
│   ├── main.tf
│   └── outputs.tf
│
└── README.md
```

---

# Docker Setup

## Build Docker Images

```bash
docker build -t sudhanshuj1307/frontend-service .
```

## Run Containers

```bash
docker run -d -p 3000:3000 sudhanshuj1307/frontend-service
```

---

# DockerHub Images

DockerHub repositories used:

- frontend-service
- user-service
- product-service
- cart-service
- order-service

DockerHub Username:

```text
sudhanshuj1307
```

---

# Terraform Infrastructure

Terraform provisions:

- EC2 Instance
- Security Group
- Docker Installation
- Automatic Container Deployment

---

# AWS Services Used

- AWS EC2
- Security Groups

Region Used:

```text
us-east-1
```

---

# Terraform Commands

## Initialize Terraform

```bash
terraform init
```

## Apply Infrastructure

```bash
terraform apply
```

## Destroy Infrastructure

```bash
terraform destroy
```

---

# Public Access

After successful deployment:

```text
http://<EC2-PUBLIC-IP>:3000
```

Expected Output:

```text
Frontend is Live
```

---

# Deployment Workflow

1. Create Node.js services
2. Dockerize all services
3. Push Docker images to DockerHub
4. Create Terraform infrastructure
5. Provision EC2 on AWS
6. Install Docker automatically using user_data
7. Pull Docker images from DockerHub
8. Run all containers automatically
9. Access frontend publicly

---

# Author

Sudhanshu Jaiswal
