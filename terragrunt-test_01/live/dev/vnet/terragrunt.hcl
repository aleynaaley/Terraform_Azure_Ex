terraform {
	source = "../../../modules/vnet"
}

dependency "resource_group" {
	config_path = "../resource-group"
}

generate "provider" {
	path = "provider.tf"
	if_exists = "overwrite_terragrunt"
	contents = <<EOF
provider "azurerm" {
	features{}
}
EOF
}

inputs = {
	resource_group_name = dependency.resource_group.outputs.resource_group_name
	name = "vnet_test"
	location = "westeurope"
}
