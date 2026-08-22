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

#azure
resource "azurerm_resource_group" "example" {
  name     = "rggroup"
  location = "Sweden Central"
}

resource "azurerm_storage_account" "test" {
  name                     = "stggroup"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "test" {
  name                  = var.azure_bucket_name
  storage_account_id    = azurerm_storage_account.test.id
  container_access_type = "private"
}