# Architecture Documentation

## Architecture Overview

This project implements a simple DevOps workflow where infrastructure is provisioned using Infrastructure as Code and configured automatically to run a containerized application.

The design focuses on repeatability, automation, and minimal manual intervention.

---

## High-Level Architecture

Developer Machine  
→ Terraform provisions infrastructure  
→ AWS EC2 instance created  
→ Ansible configures the server  
→ Docker runs application container  
→ User accesses service via public IP

---

## Flow Diagram

```
Terraform
↓
AWS EC2 Instance
↓
Ansible Configuration
↓
Docker Engine
↓
Nginx Container
↓
User Browser
```

---

## Components

### 1. Developer Machine
- Runs Terraform and Ansible  
- Acts as the control point for provisioning and configuration  
- Stores Infrastructure as Code files  

---

### 2. Terraform
- Provisions AWS infrastructure  
- Creates EC2 instance  
- Configures security groups  
- Manages SSH key pair  
- Maintains state for reproducibility  

---

### 3. AWS EC2 Instance
- Acts as the target server  
- Hosts Docker containers  
- Receives configuration from Ansible  

---

### 4. Ansible
- Installs Docker  
- Configures server automatically  
- Ensures idempotent setup  
- Removes need for manual server configuration  

---

### 5. Docker
- Provides container runtime  
- Runs Nginx container  
- Ensures application portability  

---

### 6. Nginx Container
- Serves as sample web application  
- Accessible via public IP  
- Demonstrates container deployment  

---

## Networking

- Port 22 open for SSH access  
- Port 80 open for HTTP access  
- Security groups restrict traffic to required ports only  

---

## Design Principles

- Infrastructure as Code (IaC)  
- Automation over manual setup  
- Reproducible environments  
- Minimal configuration drift  
- Simple but extensible architecture  

---

## Scalability Considerations

Future versions can include:
- Multi-node architecture  
- Load balancer integration  
- Monitoring stack (Prometheus + Grafana)  
- CI/CD pipelines  
- Auto-scaling infrastructure  

---

## Current Limitations

- Single-node setup  
- No HTTPS configuration  
- No monitoring stack yet  
- No high availability  

---

## Summary

This architecture demonstrates a foundational DevOps workflow combining provisioning, configuration management, and container deployment in a cloud environment.

It serves as a base for more advanced DevOps projects involving monitoring, CI/CD, and multi-node systems.

---
