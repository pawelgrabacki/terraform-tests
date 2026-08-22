#main.tf

#aws
resource "aws_s3_bucket" "test" {
  bucket = var.aws_bucket_name
}


#gcp


resource "google_storage_bucket" "test" {

  name     = var.gcp_bucket_name
  location = "EU"

}
