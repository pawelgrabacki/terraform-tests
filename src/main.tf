#main.tf

#aws
resource "aws_s3_bucket" "test" {
  bucket = var.bucket_name
}


#gcp

