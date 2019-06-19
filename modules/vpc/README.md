## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| availability\_zone1 | Name of availabilty zone where you want ot create public and private subnet depending upon region | string | `"us-west-2a"` | no |
| availability\_zone2 | Name of availabilty zone where you want ot create public and private subnet depending upon region | string | `"us-west-2b"` | no |
| name | name of each resource | map | `<map>` | no |
| private\_cidr1of2 | Public Subnet cidr block. Example: 10.0.3.0/24 | string | `"10.0.3.0/24"` | no |
| private\_cidr2of2 | Public Subnet cidr block. Example: 10.0.3.0/24 | string | `"10.0.4.0/24"` | no |
| public\_cidr1of2 | Public Subnet cidr block. Example: 10.0.1.0/24 | string | `"10.0.1.0/24"` | no |
| public\_cidr2of2 | Public Subnet cidr block. Example: 10.0.2.0/24 | string | `"10.0.2.0/24"` | no |
| vpc\_cidr | VPC cidr block. Example: 10.0.0.0/16 | string | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| cidr\_block | VPC Main CIDR Block |
| id | VPC ID |
| igw | VPC Internet Gateway |
| private\_subnet1of2 | Private Subnet1of2 |
| private\_subnet2of2 | Private Subnet2of2 |
| public\_subnet1of2 | Public Subnet1of2 |
| public\_subnet2of2 | Public Subnet2of2 |
