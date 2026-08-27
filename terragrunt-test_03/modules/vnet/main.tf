resource "azurerm_virtual_network" "vnet" {
	name = var.name
	location = var.location
	address_space = ["10.0.0.0/16"]
	resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnet" {
	name = "subnet_test"
	resource_group_name = var.resource_group_name
	virtual_network_name = azurerm_virtual_network.vnet.name
	address_prefixes = ["10.0.1.0/24"]
}
