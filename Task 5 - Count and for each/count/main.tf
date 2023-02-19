
resource "aws_instance" "main" {
  ami           = "ami-03cf1a25c0360a382"
  instance_type = "t2.micro"

  tags        = var.common_tags
  volume_tags = var.common_tags


  # count = length(var.memebers)

  # tags = {
  #   Name    = "${memebers[count.index]}_trying_out_count"
  #   Owner   = "${memebers[count.index]}@cloudeq.com"
  #   Purpose = "training"
  # }

  # volume_tags = {
  #   Name    = "${memebers[count.index]}_trying_out_count"
  #   Owner   = "${memebers[count.index]}@cloudeq.com"
  #   Purpose = "training"
  # }
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.ami_region
}

# resource "aws_ebs_volume" "main" {
#   availability_zone = "us-east-1a"
#   size              = 10
#   tags = {
#     name  = "sanyam_trying_it_out"
#     owner = "sanyam.rathore@cloudeq.com"
#   }
# }