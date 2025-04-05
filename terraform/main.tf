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
#   security_group_id = var.security_group.sg_id
}

# output "aws_instance_ip" {
#   value = module.ec2_instance.public_ip
# }
