## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.75.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.75.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.machine](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/compute_instance) | resource |
| [yandex_compute_image.imagename](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_subnet_id"></a> [custom\_subnet\_id](#input\_custom\_subnet\_id) | VPC subnet network id | `string` | n/a | yes |
| <a name="input_instance_family_image"></a> [instance\_family\_image](#input\_instance\_family\_image) | Instance image | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Zone on yandex.cloud | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_vm"></a> [external\_ip\_address\_vm](#output\_external\_ip\_address\_vm) | public IP adddress of instance |
| <a name="output_internal_ip_address_vm"></a> [internal\_ip\_address\_vm](#output\_internal\_ip\_address\_vm) | internal IP adddress of instance |
