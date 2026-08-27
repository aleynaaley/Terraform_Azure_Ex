terraform {
	source = "../../../modules/vnet"
}

include "root" {
	path = find_in_parent_folders("root.hcl")
}

dependency "resource_group" {
	config_path = "../resource-group"
}

inputs = {
	resource_group_name = dependency.resource_group.outputs.resource_group_name
	name = "vnet_test"
	location = "westeurope"
}
