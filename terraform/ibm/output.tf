output "ibm_instance_id" {
  value = ibm_is_instance.vm.primary_network_interface[0].primary_ipv4_address
}
