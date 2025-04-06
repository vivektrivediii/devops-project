# provider "aws" {
#   region = var.aws_region
# }

# module "ec2_instance" {
#   source          = "./modules/aws"
#   ami_id          = var.ami_id
#   instance_type   = var.instance_type
#   key_name        = var.key_name
#   instance_name   = var.instance_name
#   sg_name         = var.sg_name
#   sg_description  = var.sg_description
# }

#### az #######
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

module "vm" {
  source              = "./modules/vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_name             = var.vm_name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}

