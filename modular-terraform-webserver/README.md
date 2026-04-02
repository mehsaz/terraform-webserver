# Modular Terraform Webserver
# Modular Terraform Webserver (Azure)

This project deploys a modular, production‑ready webserver on **Microsoft Azure** using Terraform.  
It follows best practices by separating resources into reusable modules and using cloud-init for automated server configuration.

---

## 🚀 Features

- Modular Terraform structure  
- Azure Virtual Machine (Linux) provisioning  
- Network Security Group (NSG) with least‑privilege rules  
- Virtual Network + Subnet creation  
- Public IP + Network Interface  
- Cloud-init script for automated webserver setup  
- Reusable modules for clean architecture and scalability  

---

## 📁 Project Structure

modular-terraform-webserver/  
│── main.tf  
│── variables.tf  
│── outputs.tf  
│── cloud-init.yaml  
└── modules/  
  ├── vm/  
  │  ├── main.tf  
  │  ├── variables.tf  
  │  └── outputs.tf  
  ├── network/  
  │  ├── main.tf  
  │  ├── variables.tf  
  │  └── outputs.tf  
  └── nsg/  
    ├── main.tf  
    ├── variables.tf  
    └── outputs.tf  

---

## 🛠️ How to Use

### 1. Initialize Terraform

terraform init

### 2. Validate configuration

terraform validate

### 3. Review the execution plan

terraform plan

### 4. Deploy the infrastructure

terraform apply

### 5. Destroy when finished

terraform destroy

---

## 📌 Requirements

- Terraform v1.x  
- Azure CLI installed  
- Logged in using:  
  az login  
- Azure subscription with permissions to create:  
  - Virtual Machines  
  - Virtual Networks  
  - Network Security Groups  
  - Public IPs  
  - Network Interfaces  

---

## 📄 cloud-init

The cloud-init.yaml file automatically installs and configures a webserver on the Azure VM.  
This ensures the server is ready immediately after provisioning.

---

## 🤝 Contributing

Feel free to fork this repo and improve the modules or add new ones.

---

## 📬 Contact

Created by **sazia** — open to improvements and suggestions.



