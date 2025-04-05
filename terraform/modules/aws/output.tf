output "sg_id" {
  value = aws_security_group.sg.id
}

output "aws_instance_ip" {
  value = aws_instance.web.public_ip
}
