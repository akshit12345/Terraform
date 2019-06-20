# ecs-terraform
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami\_id | The AMI id to launch EC2 | string | n/a | yes |
| azs | A list of availability zones for the VPC | list | n/a | yes |
| detail | The extra description of module instance | string | `""` | no |
| name | The logical name of the module instance | string | `"default"` | no |
| node\_size | The cluster size of node pools (EC2 cluster only) | string | `"3"` | no |
| node\_ssh\_port | The ssh port number to be applied when booting (EC2 cluster only) | string | `"22"` | no |
| node\_type | Instance type of node pools (EC2 cluster only) | string | `"m5.large"` | no |
| node\_vol\_size | The disk size of root volume of each node in node pools (EC2 cluster only) | string | `"8"` | no |
| region | The aws region to deploy the service into | string | n/a | yes |
| services | The launch configuration of container and definition of cluster type of ecs | list | `<list>` | no |
| slug | A random string to be end of tail of module name | string | `""` | no |
| stack | Text used to identify stack or environment | string | `"default"` | no |
| subnets | A list of the AWS IDs of the Subnets which the Ubuntu server will be deployed into | list | n/a | yes |
| tags | The key-value maps for tagging | map | `<map>` | no |
| type | Instance type for worker node pools (EC2, FARGATE) | string | `"EC2"` | no |
| vpc | The vpc id of this service is being deployed into | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_id |  |
