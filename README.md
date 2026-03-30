Terraform Webserver Deployment
This project deploys a simple webserver on Microsoft Azure using Terraform.
It provisions the following resources:
- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Network Interface
- Virtual Machine
- Cloud‑init script to install Apache and host a webpage

🚀 How to Use
1. Initialize Terraform
Run the following command:
terraform init
2. Preview the infrastructure changes
terraform plan
3. Deploy the infrastructure
terraform apply -auto-approve
4. Destroy the infrastructure (optional)
terraform destroy -auto-approve

📂 Project Structure
main.tf – Main Terraform configuration
variables.tf – Input variables
outputs.tf – Output values
cloud-init.yaml – Script to configure the VM webserver
.gitignore – Files ignored by Git


👩‍💻 Author
Sazia
Terraform Webserver Project

