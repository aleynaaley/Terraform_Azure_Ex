terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}


/*
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
*/

module "resource_group" {
  source = "./modules/resource-group"

  name = var.resource_group_name
  location = var.location
}

