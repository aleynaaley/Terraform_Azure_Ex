locals {
    resource_group_name = "rg-${var.name}"
}

resource "azurerm_resource_group" "rg" {
    name = local.resource_group_name
    location = var.location
}
