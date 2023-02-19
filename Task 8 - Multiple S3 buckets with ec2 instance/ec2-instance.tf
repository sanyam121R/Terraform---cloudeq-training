resource "aws_instance" "sanyam-ec2" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = var.common_tags
  volume_tags = {
    Name = "sanyam"
    Owner : "sanyam.rathore@cloudeq.com"
    Purpose : "training"
    availability_zone = "ap-south-1a"
    size              = 20
  }
}