#providers.tf
terraform {
  required_version = ">=1.5"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }

    google = {
      source  = "hashicorp/google"
      version = "~>6.0"
    }

    azurerm = { # ← this key, not "azurem"
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
#aws
provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}
#gcp
provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

#azure
provider "azurerm" {
  features {}
  subscription_id = "da57a632-2e80-4943-9a82-a7ab88f5f26d"
}

