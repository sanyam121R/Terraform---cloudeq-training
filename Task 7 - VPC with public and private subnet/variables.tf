variable "vpc_cidr" {
    type = string
    description = "VPC cidr subnet range"
    default = "10.0.0.0/16"  
}

variable "common_tags" {
    type = map(all)
    default = {
      "sanyam" = {
        "owner":"sanyam.rathore@cloudeq.com"
        "purpose": "training"
      }
    }
}

variable "aws_region" {
  type = string()
  default = "ap-south-1"
  description = "AWS region in which we are going to create our VPC"
}


variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
 default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
 
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
 default     = ["10.0.4.0/24", "10.0.5.0/24"]
}