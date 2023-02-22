resource "aws_s3_bucket" "sm_s3" {
    bucket = "sanyam-s3"
    tags = var.tag_name
}
