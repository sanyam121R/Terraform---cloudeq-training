variable "ami" {
  type = string
}

variable "inst_type" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "vol_tags" {
  type = map(any)
}

variable "security_groups" {
  type = list(any)
}

variable "cnt_inst" {
  type = number
}


variable "subnet_id" {
  type = string 
}