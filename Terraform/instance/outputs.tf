output "internal_ip_address_vm" {
  value = yandex_compute_instance.machine.network_interface.0.ip_address
  description = "internal IP adddress of instance"
}

output "external_ip_address_vm" {
  value = yandex_compute_instance.machine.network_interface.0.nat_ip_address
  description = "public IP adddress of instance"
}