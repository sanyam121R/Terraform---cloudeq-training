resource "aws_instance" "main" {
  for_each      = var.common_tags
  ami           = "ami-03cf1a25c0360a382"
  instance_type = "t2.micro"

  tags = {
    Name    = each.key
    Owner   = each.value["owner"]
    Purpose = each.value["purpose"]
  }
  volume_tags = {
    Name    = each.key
    Owner   = each.value["owner"]
    Purpose = each.value["purpose"]
  }
}

resource "aws_s3_bucket" "for-aws-tf-files" {
  bucket   = "sanyam-tf-bucket"
  for_each = var.common_tags

  tags = {
    Name    = each.key
    Owner   = each.value["owner"]
    Purpose = each.value["purpose"]
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "sanyam-tf-bucket"
    key    = "sanyam.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  # access_key = var.aws_access_key
  # secret_key = var.aws_secret_key
  region = var.region
}



# resource "aws_ebs_volume" "main" {
#   availability_zone = "us-east-1a"
#   size              = 10
#   tags = {
#     name  = "sanyam_trying_it_out"
#     owner = "sanyam.rathore@cloudeq.com"
#   }
# }