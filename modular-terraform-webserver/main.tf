terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "security" {
  source              = "./modules/security"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = module.network.subnet_id
  nic_id              = module.network.nic_id
}

module "compute" {
  source              = "./modules/compute"
  resource_group_name = var.resource_group_name
  location            = var.location
  nic_id              = module.network.nic_id
  vm_admin_username   = var.vm_admin_username
  vm_admin_password   = var.vm_admin_password
  cloud_init_path     = "cloud-init.yaml"
}