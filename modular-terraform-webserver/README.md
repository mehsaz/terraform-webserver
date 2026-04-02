# Modular Terraform Webserver

This project deploys a modular, production‑ready webserver on AWS using Terraform.
It follows best practices by separating resources into reusable modules and using cloud-init for automated server configuration.

🚀 Features
- Modular Terraform structure
- EC2 instance provisioning
- Security Group with least‑privilege rules
- Cloud-init script for automated webserver setup
- Reusable modules for scalability and clean architecture
- Easy to extend and customize

📁 Project Structure
modular-terraform-webserver/
│── main.tf
│── variables.tf
│── outputs.tf
│── cloud-init.yaml
└── modules/
├── ec2/
│  ├── main.tf
│  ├── variables.tf
│  └── outputs.tf
├── vpc/
│  ├── main.tf
│  ├── variables.tf
│  └── outputs.tf
└── security-group/
├── main.tf
├── variables.tf
└── outputs.tf

🛠️ How to Use
1. Initialize Terraform
terraform init
2. Validate configuration
terraform validate
3. Review the execution plan
terraform plan
4. Deploy the infrastructure
terraform apply
5. Destroy when finished
terraform destroy

📄 cloud-init
The cloud-init.yaml file automatically installs and configures a webserver on the EC2 instance.
This ensures the server is ready immediately after provisioning.

🤝 Contributing
Feel free to fork this repo and improve the modules or add new ones.

📬 Contact
Created by sazia — feel free to reach out for improvements or suggestions.

