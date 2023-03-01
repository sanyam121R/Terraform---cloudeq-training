variable "vpc_cidr" {
    type = string
  description = "VPC cidr subnet range"
}

variable "azs" {
    type = list(string)
    description = "Availablility zones azs"
}

variable "private_subnet_cidrs" {
    type = list(any)
    description = "Private subnet cidr block"
}

variable "public_subnet_cidrs" {
    type = list(any)
    description = "Public subnet cidr"
}


