terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
    backend "azurerm" {
      resource_group_name  = "blobabhin_group"
      storage_account_name = "terraformazurefunction"
      container_name       = "terraform"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {
    resource_group {
       prevent_deletion_if_contains_resources = false
     }
  }
}