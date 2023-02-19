
resource "aws_subnet" "public_subnets" {
  count             = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.practicing_vpc.id
  cidr_block        = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name    = "sanyam_public_subnet_${count.index + 1}"
    Owner   = "sanyam.rathore@cloudeq.com"
    Purpose = "training"
  }
}

resource "aws_subnet" "private_subnets" {
  count             = length(var.private_subnet_cidrs)
  vpc_id            = aws_vpc.practicing_vpc.id
  cidr_block        = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name    = "sanyam_private_subnet_${count.index + 1}"
    Owner   = "sanyam.rathore@cloudeq.com"
    Purpose = "training"
  }
}