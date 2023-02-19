resource "aws_vpc" "practicing_vpc" {
  for_each = var.common_tags
  cidr_block = var.vpc_cidr
  tags = {
    Name = each.key
    Owner = each.value["owner"]
    Purpose = each.value["purpose"]
  }
  
}