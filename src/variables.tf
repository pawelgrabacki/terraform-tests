#variables.terraform 

#aws

variable "aws_profile" {
  type = string
}
variable "aws_region" {
  type    = string
  default = "eu-central-1"
}


#gcp
variable "gcp_project_id" {
  type    = string
  default = ""
}

variable "gcp_region" {
  type    = string
  default = "europe-west1"
}

variable "tags" {
  type = map(string)
  default = {
    project = "tf-tests"
    owner   = "pawel"
  }
}

variable "bucket_name" {
  type        = string
  description = "default bucket name"
}


