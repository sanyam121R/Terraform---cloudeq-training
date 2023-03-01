tags = {
  Name = "sanyam"
  Owner : "sanyam.rathore@cloudeq.com"
  Purpose : "training"
}
vol_tags = {
  Name = "sanyam"
  Owner : "sanyam.rathore@cloudeq.com"
  Purpose : "training"
  Availability_zone = "ap-south-1a"
}

azs                  = ["ap-south-1a", "ap-south-1b"]


vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24"]


# public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
# private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24"]



ami                  = "ami-0e742cca61fb65051"
inst_type            = "t2.micro"
aws_region           = "ap-south-1"

count_of_insta_in_private_subnet = 1
count_of_insta_in_public_subnet  = 2