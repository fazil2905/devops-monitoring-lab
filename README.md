# DevOps Provisioning Lab

## Overview
This project demonstrates Infrastructure as Code and configuration management by provisioning a cloud server and deploying a containerized web service.

The goal is to practice real-world DevOps workflows rather than isolated tool usage.

---

## Tools Used

- Terraform (Infrastructure provisioning)  
- Ansible (Configuration management)  
- Docker (Container runtime)  
- AWS EC2 (Cloud compute)  
- Nginx (Sample containerized app)

---

## What This Project Does

- Provisions an EC2 instance using Terraform  
- Configures the server using Ansible  
- Installs Docker automatically  
- Deploys an Nginx container  
- Exposes the service via security group rules  

---

## Project Workflow

1. Terraform provisions infrastructure on AWS  
2. Ansible configures the server environment  
3. Docker is installed automatically  
4. Nginx container is deployed  
5. Application is accessible via public IP  

---

## Key Learnings

- SSH key management  
- Security group networking  
- Infrastructure lifecycle (apply/destroy)  
- Idempotent configuration with Ansible  
- Container deployment basics  
- Debugging real-world cloud issues  

---

## Future Improvements

- Multi-node setup  
- Prometheus + Grafana monitoring  
- CI/CD integration  
- Domain + HTTPS  
- Automated scaling  

---

## Project Status

✅ Completed
- Terraform provisioning  
- Ansible configuration  
- Docker setup  
- Nginx deployment  

🚧 Planned
- Monitoring stack  
- Multi-node infrastructure  
- CI/CD pipelines  

---

## Notes

This project is part of a continuous DevOps learning journey focused on building practical, production-style skills rather than isolated demos.

Infrastructure can be destroyed using:

