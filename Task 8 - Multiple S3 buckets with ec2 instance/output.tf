output "S3_buckets" {
  value       = [for i in var.bucket_names : i]
  description = "S3 buckets Name"
}

output "EC2_instance" {
  value = aws_instance.sanyam-ec2.id
}


/*
Outputs:

EC2_instance = "i-0cb616679bb891ca6"
S3_buckets = [
  "sans-bucket1",
  "sans-bucket2",
]

*/