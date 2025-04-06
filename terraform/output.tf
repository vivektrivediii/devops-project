#####aws#########
output "aws_instance_ip" {
  value = module.ec2_instance.aws_instance_ip
}



#####az#####
output "vm_public_ip" {
  description = "Public IP of the virtual machine"
  value       = module.vm.vm_public_ip
}
