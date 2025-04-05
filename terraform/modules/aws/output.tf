output "sg_id" {
  value = aws_security_group.sg.id
}

output "aws_instance_ip" {
  value = module.ec2_instance.aws_instance_ip
}
