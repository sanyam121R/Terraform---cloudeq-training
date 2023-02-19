variable "vpc_cidr" {
  type        = string
  description = "VPC cidr subnet range"
  default     = "10.0.0.0/16"
}

variable "instances_in_each_subnet" {
  type        = number
  default     = 2
  description = "Number of instances in each subnet.."
}

variable "ami_id" {
  type    = string
  default = "ami-0e742cca61fb65051"

}

variable "aws_region" {
  type        = string
  default     = "ap-south-1"
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

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["ap-south-1a", "ap-south-1b"]
}