# terraform {
#   backend "s3" {
#     bucket = "sanyam_s3_bucket"
#     key    = "sanyams_terraformcode.tfstate"
#     region = "ap-south-1"

#     dynamodb_table = "sanyams_DynamoDbTable"
#   }
# }