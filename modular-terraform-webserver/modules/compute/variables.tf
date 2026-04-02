variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "nic_id" {
  type = string
}

variable "vm_admin_username" {
  type = string
}

variable "vm_admin_password" {
  type      = string
  sensitive = true
}

variable "cloud_init_path" {
  type = string
}