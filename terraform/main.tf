provider "aws" {
  region = var.aws_region
}

# module "security_group" {
#   source = "./modules/security-group"
# }

module "ec2_instance" {
  source            = "./modules/aws"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = [aws_security_group.sg.id]
}


