output "id" {
  description = "VPC ID"
  value = "${aws_vpc.main.id}"
}

output "cidr_block" {
  description = "VPC Main CIDR Block"
  value = "${aws_vpc.main.cidr_block}"
}

output "igw" {
  description = "VPC Internet Gateway"
  value = "${aws_internet_gateway.gw.id}"
}

output "private_subnet1of2" {
  description = "Private Subnet1of2"
  value = "${aws_subnet.private1of2.id}"
}

output "public_subnet1of2" {
  description = "Public Subnet1of2"
  value = "${aws_subnet.public1of2.id}"
}
output "public_subnet2of2" {
  description = "Public Subnet2of2"
  value = "${aws_subnet.public2of2.id}"
}
output "private_subnet2of2" {
  description = "Private Subnet2of2"
  value = "${aws_subnet.private2of2.id}"
}