resource "azurerm_resource_group" "aley"{
	name = var.name
	location = var.location

  tags = {
    Environment= "test"
    Team = "aleyaley"
    Department = "IT"
  }
}
