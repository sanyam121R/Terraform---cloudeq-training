variable "vpc_cidr" {
  type        = string
  description = "VPC cidr subnet range"
}

variable "azs" {
  type        = list(string)
  description = "Availablility zones azs"
}

variable "private_subnet_cidrs" {
  type        = list(any)
  description = "Private subnet cidr block"
}

variable "public_subnet_cidrs" {
  type        = list(any)
  description = "Public subnet cidr"
}

variable "ami" {
  type        = string
  description = "Ami id using to fit it into the module"
}

variable "inst_type" {
  type = string
}

variable "tags" {
  type        = map(any)
  description = "Tags which is to be provided as an essential thing"
}

variable "vol_tags" {
  type        = map(any)
  description = "Volume Tags which is to be provided as an essential thing for ec2 instance"
}

variable "aws_region" {
  type = string
}

variable "count_of_insta_in_private_subnet" {
  type = number
}

variable "count_of_insta_in_public_subnet" {
  type = number
}