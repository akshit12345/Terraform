## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami\_id | AMI that will be launched | string | `"ami-06832d84cd1dbb448"` | no |
| associate\_public\_ip\_address |  | string | `"false"` | no |
| ec2\_subnet\_id |  | string | n/a | yes |
| iam\_instance\_profile | Enter iam instance profile name | string | n/a | yes |
| instance\_type | EC2 instance type | string | `"t2.micro"` | no |
| key\_name |  | string | n/a | yes |
| sg\_id\_ec2 |  | string | n/a | yes |
| tags | Additional tags to be applied to all resources | map | `<map>` | no |
| volume\_size |  | string | n/a | yes |
| vpc\_id |  | string | `"vpc-958fa0fd"` | no |

## Outputs

| Name | Description |
|------|-------------|
| instance\_id |  |
| private-ip |  |
| public\_dns |  |
| public\_ip |  |