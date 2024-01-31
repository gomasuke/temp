<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | git::https://gitlab.expo.cncg.io/CloudNative-AP/terraform-module-design//modules/network | 0.0.11 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_internet_gateway_name"></a> [internet\_gateway\_name](#input\_internet\_gateway\_name) | インターネットゲートウェイの名前 | `string` | `"terradesign-dev-internet-gateway"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | プライベートサブネット | `map(any)` | <pre>{<br>  "1a": {<br>    "availability_zone": "ap-northeast-1a",<br>    "cidr_block": "192.168.11.0/24",<br>    "route_table_name": "terradesign-dev-private-routetable-1a",<br>    "subnet_name": "terradesign-dev-private-sunbet-1a"<br>  },<br>  "1c": {<br>    "availability_zone": "ap-northeast-1c",<br>    "cidr_block": "192.168.21.0/24",<br>    "route_table_name": "terradesign-dev-private-routetable-1c",<br>    "subnet_name": "terradesign-dev-private-sunbet-1c"<br>  },<br>  "1d": {<br>    "availability_zone": "ap-northeast-1d",<br>    "cidr_block": "192.168.31.0/24",<br>    "route_table_name": "terradesign-dev-private-routetable-1d",<br>    "subnet_name": "terradesign-dev-private-sunbet-1d"<br>  }<br>}</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | パブリックサブネット | `map(any)` | <pre>{<br>  "1a": {<br>    "availability_zone": "ap-northeast-1a",<br>    "cidr_block": "192.168.10.0/24",<br>    "route_table_name": "terradesign-dev-public-routetable-1a",<br>    "subnet_name": "terradesign-dev-public-sunbet-1a"<br>  },<br>  "1c": {<br>    "availability_zone": "ap-northeast-1c",<br>    "cidr_block": "192.168.20.0/24",<br>    "route_table_name": "terradesign-dev-public-routetable-1c",<br>    "subnet_name": "terradesign-dev-public-sunbet-1c"<br>  },<br>  "1d": {<br>    "availability_zone": "ap-northeast-1d",<br>    "cidr_block": "192.168.30.0/24",<br>    "route_table_name": "terradesign-dev-public-routetable-1d",<br>    "subnet_name": "terradesign-dev-public-sunbet-1d"<br>  }<br>}</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPCに割り当てるCIDR | `string` | `"192.168.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPCの名前 | `string` | `"terradesign-dev-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internet_gateway_id"></a> [internet\_gateway\_id](#output\_internet\_gateway\_id) | VPCのID |
| <a name="output_private_subnet_1a_id"></a> [private\_subnet\_1a\_id](#output\_private\_subnet\_1a\_id) | プライベートサブネット1aのID |
| <a name="output_private_subnet_1c_id"></a> [private\_subnet\_1c\_id](#output\_private\_subnet\_1c\_id) | プライベートサブネット1cのID |
| <a name="output_private_subnet_1d_id"></a> [private\_subnet\_1d\_id](#output\_private\_subnet\_1d\_id) | プライベートサブネット1dのID |
| <a name="output_public_subnet_1a_id"></a> [public\_subnet\_1a\_id](#output\_public\_subnet\_1a\_id) | パブリックサブネット1aのID |
| <a name="output_public_subnet_1c_id"></a> [public\_subnet\_1c\_id](#output\_public\_subnet\_1c\_id) | パブリックサブネット1cのID |
| <a name="output_public_subnet_1d_id"></a> [public\_subnet\_1d\_id](#output\_public\_subnet\_1d\_id) | パブリックサブネット1dのID |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPCのID |
<!-- END_TF_DOCS -->