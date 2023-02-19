aws_region               = "ap-south-1"
azs                      = ["ap-south-1a", "ap-south-1b"]
ami_id                   = "ami-0e742cca61fb65051"
instances_in_each_subnet = 2

vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24"]