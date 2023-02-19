resource "aws_vpc" "practicing_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    "Name" = "Sanyam-vpc"
    "Owner" = "sanyam.rathore@cloudeq.com"
    "Purpose" = "training"
  }
}