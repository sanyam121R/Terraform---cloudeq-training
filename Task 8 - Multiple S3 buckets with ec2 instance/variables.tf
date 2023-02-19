variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "ami_id" {
  type    = string
  default = "ami-0e742cca61fb65051"
}

variable "instance_type" {
  type    = string
  default = "t2-micro"
}

variable "bucket_names" {
  type = list(string)
}

variable "common_tags" {
  type = map(any)
}