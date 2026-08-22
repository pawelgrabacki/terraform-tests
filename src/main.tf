terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "eu-central-1"
  profile = "pgtf"
}

resource "aws_s3_bucket" "test" {
  bucket_prefix = "testbucket-"
  force_destroy = true
}

output "bucket_name" {
  value = aws_s3_bucket.test.bucket
}