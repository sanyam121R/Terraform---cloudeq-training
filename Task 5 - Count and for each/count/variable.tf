variable "memebers" {
  description = "Trying to create different ec2 instances for different memebers."
  type        = list(string)
}

variable "common_tags" {
  description = "the common tags like name, owner, purpose.."
  type        = map(string)
}

variable "ami_region" {
  type = string
  description = "Region for ami"
  default = "us-east-1"
}
