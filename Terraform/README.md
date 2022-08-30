## Задача

Задача состоит в том, чтобы через терраформ организовать деплой двух виртуальных машин на Яндекс Клауде, одну из образа LEMP, другую из образа LAMP, и повесить их на балансировщик нагрузки, чтобы при обращении на 80й порт балансировщика нагрузки возвращались поочередно стартовые страницы Apache и nginx.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.75.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.75.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_instance_1"></a> [instance\_1](#module\_instance\_1) | ./instance | n/a |
| <a name="module_instance_2"></a> [instance\_2](#module\_instance\_2) | ./instance | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_lb_network_load_balancer.tf-balancer](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/lb_network_load_balancer) | resource |
| [yandex_lb_target_group.tf-target-group](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/lb_target_group) | resource |
| [yandex_vpc_network.network-tf](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.subnet-tf-1](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/vpc_subnet) | resource |
| [yandex_vpc_subnet.subnet-tf-2](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/vpc_subnet) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_vm_1"></a> [external\_ip\_address\_vm\_1](#output\_external\_ip\_address\_vm\_1) | external IP adddress of vm-1 LEMP |
| <a name="output_external_ip_address_vm_2"></a> [external\_ip\_address\_vm\_2](#output\_external\_ip\_address\_vm\_2) | external IP adddress of vm-2 LAMP |
| <a name="output_internal_ip_address_vm_1"></a> [internal\_ip\_address\_vm\_1](#output\_internal\_ip\_address\_vm\_1) | internal IP adddress of vm-1 LEMP |
| <a name="output_internal_ip_address_vm_2"></a> [internal\_ip\_address\_vm\_2](#output\_internal\_ip\_address\_vm\_2) | internal IP adddress of vm-2 LAMP |
