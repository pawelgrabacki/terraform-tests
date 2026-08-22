#variables.terraform 

#aws

variable "aws_profile" {
  type    = string
  default = "Terraform"
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

variable "aws_bucket_name" {
  type        = string
  description = "default bucket"
  default     = "aws_pawel-tf-test-2026-a7x3"
}

variable "gcp_bucket_name" {
  type        = string
  description = "default bucket"
  default     = "gcp_pawel-tf-test-2026-a7x3"

}
variable "azure_bucket_name" {
  type        = string
  description = "default bucket"
  default     = "azure_pawel-tf-test-2026-a7x3"
}

