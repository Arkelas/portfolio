terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.75.0"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "arkelas-tf-bucket"
    region     = "ru-central1-a"
    key        = "terraform.tfstate"
    access_key = "<>"
    secret_key = "<>"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token                    = "<>"
  cloud_id                 = "<>"
  folder_id                = "<>"
}

resource "yandex_vpc_network" "network-tf" {
  name = "network-tf"
}

resource "yandex_vpc_subnet" "subnet-tf-1" {
  name           = "subnet-tf-1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-tf.id
  v4_cidr_blocks = ["192.168.5.0/24"]
}

resource "yandex_vpc_subnet" "subnet-tf-2" {
  name           = "subnet-tf-2"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.network-tf.id
  v4_cidr_blocks = ["192.168.7.0/24"]
}
module "instance_1" {
  source = "./instance"
  custom_subnet_id = yandex_vpc_subnet.subnet-tf-1.id
  instance_family_image = "lemp"
  zone_id = "ru-central1-a"
}

module "instance_2" {
  source = "./instance"
  custom_subnet_id = yandex_vpc_subnet.subnet-tf-2.id
  instance_family_image = "lamp"
  zone_id = "ru-central1-b"
}

resource "yandex_lb_target_group" "tf-target-group" {
  name = "tf-target-group"
  region_id = "ru-central1"

  target {
    subnet_id = yandex_vpc_subnet.subnet-tf-1.id
    address   = module.instance_1.internal_ip_address_vm
  }

  target {
    subnet_id = yandex_vpc_subnet.subnet-tf-2.id
    address   = module.instance_2.internal_ip_address_vm
  }
}

resource "yandex_lb_network_load_balancer" "tf-balancer" {
  name = "tf-balancer"

  listener {
    name = "tf-listener"
    port = 80
    target_port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_lb_target_group.tf-target-group.id
    healthcheck {
      name = "tf-healthcheck"
        http_options {
          port = 80
          path = "/"
        }
    }
  }
}