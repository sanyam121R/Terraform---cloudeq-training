terraform {
  required_provider {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    
    backend "s3" {
      bucket = "sanyam-tf-bucket"
      key    = "sanyam.tfstate"
      region = var.aws_region
      dynamodb_table = ""
      
    }
  }
}
