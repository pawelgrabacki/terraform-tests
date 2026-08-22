#main.tf

#aws
resource "aws_s3_bucket" "test" {
  bucket_prefix = "testbucket-"
  force_destroy = true
}


#gcp