
# elb


# resource "aws_s3_bucket" "for-aws-tf-files" {
#   bucket   = "sanyam-tf-bucket"
#   for_each = var.common_tags
#   dynamodb_table = ""
#   tags = {
#     Name    = each.key
#     Owner   = each.value["owner"]
#     Purpose = each.value["purpose"]
#   }
# }