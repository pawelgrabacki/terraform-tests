#providers.tf
#aws
provider "aws"{
    profile = var.aws_profile
    region = var.aws_region
}
#gcp
provider "google"{
    project = var.gcp_project_id
    region = var.gcp_region
}

