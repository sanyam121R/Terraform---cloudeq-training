resource "aws_instance" "sanyam-inst-in-public-subnet1" {
  ami             = var.ami_id
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.sanyam-security-group-vpc.id}"]
  count           = length(var.public_subnet_cidrs)
  subnet_id       = element(aws_subnet.public_subnets[*].id, count.index)

  tags = {
    Name    = "sanyam_ec2_public_${count.index + 1}"
    Owner   = "sanyam.rathore@cloudeq.com"
    Purpose = "training"
  }
  volume_tags = {
    Name                = "sanyam_ec2_public_${count.index + 1}"
    Owner               = "sanyam.rathore@cloudeq.com"
    Purpose             = "training"
    "availability_zone" = var.aws_region
    size                = 30
  }
}



resource "aws_instance" "sanyam-inst-in-private-subnet1" {
  ami             = var.ami_id
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.sanyam-security-group-vpc.id}"]
  count           = length(var.private_subnet_cidrs)
  subnet_id       = element(aws_subnet.private_subnets[*].id, count.index)


  tags = {
    Name    = "sanyam_ec2_private_${count.index + 1}"
    Owner   = "sanyam.rathore@cloudeq.com"
    Purpose = "training"
  }

  volume_tags = {
    Name                = "sanyam_ec2_private_${count.index + 1}"
    Owner               = "sanyam.rathore@cloudeq.com"
    Purpose             = "training"
    "availability_zone" = var.aws_region
    size                = 30
  }
}

