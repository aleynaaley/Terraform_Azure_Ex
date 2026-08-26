resource "azurerm_resource_group" "aley"{
	name = local.resource_group_name
	location = var.location

  tags = {
    Environment= "test"
    Team = "aleyaley"
    Department = "IT"
  }
}
