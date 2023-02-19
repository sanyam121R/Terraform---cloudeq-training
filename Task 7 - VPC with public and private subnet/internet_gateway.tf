resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.practicing_vpc.id

  tags = {
    "Name"    = "sanyam_ig_vpc"
    "Owner"   = "sanyam.rathore@cloudeq.com"
    "Purpose" = "training"
  }
}