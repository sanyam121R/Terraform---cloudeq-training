resource "aws_ebs_volume" "main" {
  for_each          = var.common_tags
  count             = length(var.azs)
  availability_zone = var.azs[count.index]
  size              = 20
  tags = {
    Name : each.key
    Owner : each.value["owner"]
    Purpose : each.value["purpose"]
  }
}