variable "tags" {
  description = "Additional tags to be applied to all resources"
  type        = "map"
  default     = {Name = "test"}
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI that will be launched"
  type = "string"
  default = "ami-06832d84cd1dbb448"
}

variable "ec2_subnet_id" {
  description = "Enter subnet id for ec2"  
}

variable "key_name" {
  description = "Enter key name for ec2 instance"
}

variable "volume_size" {
  description = "Enter the size of volume of instance"
}
variable "sg_id_ec2" {
  description = "Security group id of security group attached to ec2"
}

variable "vpc_id" {
  description = "Enter vpc id"
  default = "vpc-958fa0fd"
}

variable "associate_public_ip_address" {
  description = "Enter value for associating public ip address"
  default = "false"
}
variable "iam_instance_profile" {
  description = "Enter iam instance profile name"

}
