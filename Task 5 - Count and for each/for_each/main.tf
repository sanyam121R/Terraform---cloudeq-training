
resource "aws_instance" "main" {
  ami           = "ami-03cf1a25c0360a382"
  instance_type = "t2.micro"

  count = length(var.memebers)

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


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}




variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  #default     = ["jupiter", "saturn", "uranus"]
}

variable "aws_region" {
  description = "The AWS region in which the AWS infrastructure is created."
  type        = string
  #default     = "us-west-2"
}


resource "aws_iam_user" "example_count" {
  count = length(var.user_names)
  name  = "${var.user_names[count.index]}-${count.index+1}"
}

resource "aws_iam_user" "example_for_each" {
  for_each = toset(var.user_names)
  name     = each.value
}

output "all_user_arns_count" {
  value       = aws_iam_user.example_count[*].arn
  description = "The ARNs for all count users"
}

output "all_users_for_each" {
  value       = aws_iam_user.example_for_each[*]
  description = "All for_each users"
}

output "all_users_for_each_just_names" {
  value       = values(aws_iam_user.example_for_each)[*].name
  description = "All for_each users just names"
}

output "names_in_uppercase" {
  value = [for n in var.user_names : upper(n)]
}    

// map
output "all_users_for_each_name_unique_id" {
    value = {
        for user in aws_iam_user.example_for_each:
            user.name => user.unique_id
    }
}




