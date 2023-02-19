variable "file_name" {
  description = "Enter the value: "
  default     = "./files/varfile.py"
}

variable "instance_name" {
  description = "Enter EC2 instance name: "
  default     = "AZURE instance"
}

variable "region" {
  description = "The AWS region."
  default     = "us-east-1"
}

variable "ami" {
  type = map(any)
  default = {
    us-east-1 = "ami-0d729a60"
    us-west-1 = "ami-7c4b331c"
  }
  description = "The AMIs to use."
}
