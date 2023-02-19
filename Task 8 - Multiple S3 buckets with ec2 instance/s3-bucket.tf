resource "aws_s3_bucket" "h-S3_Bucket" {
  count  = length(var.bucket_names)
  bucket = var.bucket_names[count.index]

  tags = var.common_tags
}