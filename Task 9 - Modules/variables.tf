variable "ami_id" {
  type = string
  default = "ami-0e742cca61fb65051"
}

variable "inst_type" {
  type = string
  default = "t2.micro"
}

variable "tag_name" {
  type = map(any)
  default = {
    Name  = "sanyam_trying_modules"
    Owner = "sanyam.rathore@cloudeq.com"
  }
}

variable "aws_region" {
  type = string
  default = "ap-south-1"
}
