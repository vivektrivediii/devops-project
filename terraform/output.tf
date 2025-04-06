output "ec2_ip" {
  value = module.ec2_instance.aws_instance_ip
}
# output "aws_instance_ip" {
#   value = aws_instance.web.public_ip
# }
output "aws_instance_ip" {
  value = module.ec2_instance.aws_instance_ip
}
