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


Run docker build for user service-
<img width="624" height="261" alt="image" src="https://github.com/user-attachments/assets/ba00d70c-2b56-40df-b9a1-c78cd79c60e4" />

 

Product service-
<img width="624" height="180" alt="image" src="https://github.com/user-attachments/assets/58968113-f418-4c6c-a7c6-76f43096bfb0" />

 

Cart service –
<img width="624" height="237" alt="image" src="https://github.com/user-attachments/assets/d0c71edf-79bc-4d7b-85e7-ef5c717c8cd5" />

 
Order service-
<img width="624" height="243" alt="image" src="https://github.com/user-attachments/assets/97ef030f-4888-48c1-a5a9-bcc0d4cae8b5" />

 

Docker images-
<img width="624" height="81" alt="image" src="https://github.com/user-attachments/assets/b34ff26b-b12a-487f-84b2-4f76a039d0f0" />

 

Curl host
<img width="624" height="453" alt="image" src="https://github.com/user-attachments/assets/8ba8f51a-c777-420c-b655-2029e68000c6" />

<img width="624" height="336" alt="image" src="https://github.com/user-attachments/assets/6e655ed0-c9a2-4c56-9317-1019420a3fae" />
 

 

Ran docker ps
<img width="893" height="226" alt="image" src="https://github.com/user-attachments/assets/a1c972f6-d3b5-4563-9a72-7c0ab3d3545d" />

 

Backend running perfectly


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

<img width="551" height="582" alt="image" src="https://github.com/user-attachments/assets/f3b6bbfa-c557-4c8a-a6c3-f87c726db243" />

DockerHub Username:

```text
sudhanshuj1307
```
<img width="624" height="384" alt="image" src="https://github.com/user-attachments/assets/6292c7be-84c4-4d21-be68-649a557aca66" />

---

# Terraform Infrastructure

Terraform provisions:

- EC2 Instance
- Security Group
- Docker Installation
- Automatic Container Deployment


main.tf

<img width="436" height="649" alt="image" src="https://github.com/user-attachments/assets/a7da1e6c-a63e-4fe7-9408-4ee74921c1a0" />

providers.tf

<img width="488" height="178" alt="image" src="https://github.com/user-attachments/assets/311317fe-37ef-466e-ba4c-4a73ca0b68ad" />


Output.tf-

<img width="421" height="154" alt="image" src="https://github.com/user-attachments/assets/f02ea027-c0e4-426f-927d-506ea9172132" />

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
<img width="624" height="345" alt="image" src="https://github.com/user-attachments/assets/592baa67-07b1-4b42-ace7-3384a0b58715" />

<img width="624" height="622" alt="image" src="https://github.com/user-attachments/assets/7400b4e7-8575-4718-b517-a4e2004a2867" />

## Apply Infrastructure

```bash
terraform apply
```
<img width="624" height="157" alt="image" src="https://github.com/user-attachments/assets/171c01eb-6521-4348-b02a-d91223605100" />

## Destroy Infrastructure

```bash
terraform destroy
```
<img width="895" height="121" alt="image" src="https://github.com/user-attachments/assets/c78b1228-3769-45dc-bd22-1650553df8da" />

---

# Public Access

After successful deployment:

```text
http://http://3.80.128.241:3000/
```

Expected Output:

```text
Frontend is Live
```
<img width="569" height="198" alt="image" src="https://github.com/user-attachments/assets/d2681e6b-462c-424b-bd30-fc84b7a78b22" />

<img width="624" height="134" alt="image" src="https://github.com/user-attachments/assets/170929ef-e02b-4890-8e0a-176bb30662f0" />

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
