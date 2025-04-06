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
variable "resource_group_name" {}
variable "location" {}
variable "vm_name" {}
variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default = "azureuser"
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
  default = "P@ssword1234!"
}

variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {
  sensitive = true
}
variable "tenant_id" {}
