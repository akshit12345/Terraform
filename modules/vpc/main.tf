provider "aws" {
  region = "us-west-2" 
 
}



resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags =  "${var.name}"
   
    
 
}

resource "aws_subnet" "public1of2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_cidr1of2}"
  availability_zone = "${var.availability_zone1}"
  tags = "${var.name}"
   
  
}
resource "aws_subnet" "public2of2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_cidr2of2}"
  availability_zone = "${var.availability_zone2}"
  tags = "${var.name}"
}


resource "aws_subnet" "private1of2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.private_cidr1of2}"
  availability_zone = "${var.availability_zone1}"
  tags = "${var.name}"
 
  
}

resource "aws_subnet" "private2of2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.private_cidr2of2}"
  availability_zone = "${var.availability_zone2}"
  tags = "${var.name}"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
  tags = "${var.name}"
}

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = "${var.name}"
    

}

resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.main.id}"
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id  = "${aws_nat_gateway.nat.id}"
  }
  tags = "${var.name}"
  
}

resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.private1of2.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "b" {
  subnet_id      = "${aws_subnet.public1of2.id}"
  route_table_id = "${aws_route_table.public.id}"
}
resource "aws_route_table_association" "c" {
  subnet_id      = "${aws_subnet.public2of2.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "d" {
  subnet_id      = "${aws_subnet.private2of2.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_eip" "nat" {
  vpc      = true
  tags = "${var.name}"
 
}

resource "aws_nat_gateway" "nat" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.public1of2.id}"
  tags = "${var.name}"

}