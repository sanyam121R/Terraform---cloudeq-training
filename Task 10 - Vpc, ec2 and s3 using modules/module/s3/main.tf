resource "aws_s3_bucket" "s3" {
    bucket   = "sanyam-tf-bucket"

    tags = var.tags
}