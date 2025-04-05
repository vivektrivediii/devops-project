provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source          = "./modules/aws"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  instance_name   = var.instance_name
  sg_name         = var.sg_name
  sg_description  = var.sg_description
}
