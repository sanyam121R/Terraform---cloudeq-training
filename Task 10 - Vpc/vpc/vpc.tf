resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    "Name"    = "Sanyam-vpc"
    "Owner"   = "sanyam.rathore@cloudeq.com"
    "Purpose" = "training"
  }
}


resource "aws_subnet" "public_subnets" {
  vpc_id = aws_vpc.vpc.id
  count = length(var.public_subnet_cidrs)
  cidr_block = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    "Name"    = "sanyam_public_subnet_${count.index + 1}"
    "Owner"   = "sanyam.rathore@cloudeq.com"
    "Purpose" = "training"
  }
}


resource "aws_subnet" "private_subnets" {
  vpc_id            = aws_vpc.vpc.id
  count             = length(var.private_subnet_cidrs)
  cidr_block        = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name    = "sanyam_private_subnet_${count.index + 1}"
    Owner   = "sanyam.rathore@cloudeq.com"
    Purpose = "training"
  }
}


resource "aws_route_table" "second_rt" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "sanyam 2nd route table"
  }
}


resource "aws_route_table_association" "public_subnet_asso" {
  count          = length(var.public_subnet_cidrs)
  subnet_id      = element(aws_subnet.public_subnets[*].id, count.index)
  route_table_id = aws_route_table.second_rt.id
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    "Name"    = "sanyam_ig_vpc"
    "Owner"   = "sanyam.rathore@cloudeq.com"
    "Purpose" = "training"
  }
}