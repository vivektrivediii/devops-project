variable "aws_region" {}
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "instance_name" {}

variable "sg_name" {
  default = "papersocial-sg"
}

variable "sg_description" {
  default = "Allow HTTP and SSH"
}


####az###
variable "resource_group_name" {
  # description = "Name of the resource group"
  # type        = string
}

variable "location" {
  # description = "Azure region for resources"
  # type        = string
}

variable "vm_name" {
  # description = "Name of the Virtual Machine"
  # type        = string
}

variable "admin_username" {
  # description = "Admin username for the VM"
  # type        = string
}

variable "admin_password" {
  # description = "Admin password for the VM"
  # type        = string
  # sensitive   = true
  # default = "P@ssword1234!"
}


variable "subscription_id" {
  # type        = string
  # description = "Azure subscription ID"
}

variable "client_id" {
  # type        = string
  # description = "Azure client ID"
}

variable "client_secret" {
  # type        = string
  # description = "Azure client secret"
  # sensitive   = true
}

variable "tenant_id" {
  # type        = string
  # description = "Azure tenant ID"
}
    