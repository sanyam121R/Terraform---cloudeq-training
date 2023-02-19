variable "common_tags" {
  type = map(any)
  default = {
    "sanyam" : { "owner" : "sanyam.rathore@cloudeq.com", "purpose" : "training" }
  }
}

variable "aws_region" {
  type        = string()
  describtion = "This the region in which we are creating things, region like Asia Pacific (Mumbai): ap-south-1"
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16" # "10.0.0.0/16"
}


variable "public_subnets_cidrs" {
  type    = list(string)
  description = "Public Subnet CIDR values"
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type = list(string)
  description = "Private Subnet CIDR values"
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}


variable "azs" {
  type    = list(any)
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "ec2_servers_ami" {
  default = "ami-0e742cca61fb65051"
}

variable "instance_type" {
  default = "t2.micro"
}