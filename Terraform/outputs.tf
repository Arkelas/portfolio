output "external_ip_address_vm_1" {
  value = module.instance_1.external_ip_address_vm
  description = "external IP adddress of vm-1 LEMP"
}

output "external_ip_address_vm_2" {
  value = module.instance_2.external_ip_address_vm
  description = "external IP adddress of vm-2 LAMP"
}

output "internal_ip_address_vm_1" {
  value =module.instance_1.internal_ip_address_vm
  description = "internal IP adddress of vm-1 LEMP"
}

output "internal_ip_address_vm_2" {
  value =module.instance_2.internal_ip_address_vm
  description = "internal IP adddress of vm-2 LAMP"
}

#output "external_ip_address_balancer" {
#  value =yandex_lb_network_load_balancer.tf-balancer.listener.external_address_spec.address
#  description = "external IP adddress of balancer"
#}