
resource "aws_instance" "main" {
  ami           = "ami-03cf1a25c0360a382"
  instance_type = "t2.micro"
  tags = {
    Name  = "sanyam_trying_it_out"
    Owner = "sanyam.rathore@cloudeq.com"
  }
  volume_tags={
    Name  = "sanyam_trying_it_out"
    Owner = "sanyam.rathore@cloudeq.com"
  }
}

# resource "aws_ebs_volume" "main" {
#   availability_zone = "us-east-1a"
#   size              = 10
#   tags = {
#     Name  = "sanyam_trying_it_out"
#     Owner = "sanyam.rathore@cloudeq.com"
#   }
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}