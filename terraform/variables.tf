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

