variable "location" {
  description = "Azure region"
  default     = "canadaeast"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "tf-webserver-rg"
}

variable "vm_admin_username" {
  description = "Admin username for the VM"
  default     = "azureuser"
}

variable "vm_admin_password" {
  description = "Admin password for the VM"
  sensitive   = true
}