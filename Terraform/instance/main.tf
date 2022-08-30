terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.75.0"
    }
  }
}

data "yandex_compute_image" "imagename" {
  family = var.instance_family_image
}

resource "yandex_compute_instance" "machine" {
  name = "tf-${var.instance_family_image}"
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.imagename.id
    }
  }
  resources {
    core_fraction = 20
    cores  = 2
    memory = 2
  }
  scheduling_policy {
    preemptible = false
  }
  network_interface {
    subnet_id = var.custom_subnet_id
    nat = true
  }
  zone = var.zone_id
  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}