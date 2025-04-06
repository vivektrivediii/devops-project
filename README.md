# Infrastructure Setup and Deployment Guide

This project provides a full infrastructure and deployment pipeline using **Terraform**, **Ansible**, and **GitHub Actions** CI/CD, along with application code and monitoring stack.

---

## 📁 Folder Structure

 
.
├── terraform/
│   └── modules/
│       ├── aws/          # Terraform code for AWS resources (EC2, Security Group, etc.)
│       └── vm/           # Terraform code for Azure VMs and related infrastructure
├── ansible/
│   ├── playbooks/
│   │   ├── ubuntu_playbook.yml     # Installs dependencies, runs sample container & app on Ubuntu
│   │   └── amazon_playbook.yml     # Same as above but for Amazon Linux
│   └── roles/                      # Galaxy roles used by playbooks
├── app/
│   ├── js-app/                     # JavaScript-based application (inactive currently)
│   └── python-app/                 # Python app running on port 5000 with live reload and CI/CD
├── monitoring/
│   ├── grafana/
│   ├── loki/
│   └── prometheus/                # Configuration for observability and logging stack
├── .github/
│   └── workflows/
│       └── cicd.yaml              # GitHub Actions workflow for automation
 

---

## ⚙️ Setup Instructions

### 1. Terraform (Infrastructure Setup)

Navigate to the `terraform/` folder to run the Terraform code. This will provision required infrastructure on AWS or Azure.

 
cd terraform
terraform init
terraform apply
 

The modules automatically create:
- EC2/VM instances
- Security groups
- Networking

Make sure your cloud credentials are configured locally (AWS CLI or Azure CLI).

---

### 2. Ansible (Provisioning and App Deployment)

Use Ansible to install necessary dependencies, run a sample container, and deploy the app on the provisioned instances.

**For Ubuntu-based instance:**
 
cd ansible
ansible-playbook playbooks/ubuntu_playbook.yml -i inventory
 

**For Amazon Linux instance:**
 
ansible-playbook playbooks/amazon_playbook.yml -i inventory
 

Each playbook:
- Installs system packages
- Deploys a sample container
- Deploys the Python app (from `app/python-app/`)

---

### 3. Application (Live Python App)

- Python app runs on port `5000` with **live changes** enabled.
- CI/CD is handled via GitHub Actions (`.github/workflows/cicd.yaml`)
- App source code is located in `app/python-app/`.

---

### 4. Monitoring Stack

The `monitoring/` folder includes:
- **Grafana**: Dashboarding
- **Prometheus**: Metrics collection
- **Loki**: Log aggregation

You can deploy this stack via Docker Compose or Kubernetes (based on your choice).

---

### 5. GitHub Actions CI/CD

- The GitHub Actions workflow (`.github/workflows/cicd.yaml`) automates:
  - App deployment
  - Infrastructure changes
  - Secret management (stored securely in GitHub Secrets)
  - Ansible provisioning steps (if required)

---

## 💻 Running Locally

If you're running everything from your local machine:

1. **Run Terraform code**:
     
    cd terraform
    terraform apply
     

2. **Run appropriate Ansible playbook** (based on your instance type):
     
    cd ansible
    ansible-playbook playbooks/ubuntu_playbook.yml -i inventory
     

3. **Check GitHub CI/CD**:
   - The CI/CD pipeline contains all automation steps
   - Reviewing the `.github/workflows/cicd.yaml` file gives deeper insight into how infrastructure and apps are built, deployed, and monitored

---

## 🔒 Secrets

All sensitive data like tokens, cloud keys, and passwords are stored securely in **GitHub Secrets**, used directly in GitHub Actions.
Also attached image.png for your reference.
---

