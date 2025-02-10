terraform {
    required_version = "~> 1.10.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "12865574-360b-4a54-9c74-62f15fa7e354"
  features {}
}
