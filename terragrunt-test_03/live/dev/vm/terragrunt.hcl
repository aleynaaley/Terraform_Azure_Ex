terraform {
	source = "../../../modules/vm"
}

include "root" {
	path = find_in_parent_folders("root.hcl")
}

dependency "resource_group" {
	config_path = "../resource-group"
}

dependency "vnet" {
    config_path = "../vnet"
}

inputs = {
	resource_group_name = dependency.resource_group.outputs.resource_group_name
	subnet_id = dependency.vnet.outputs.subnet_id
    vm_name = "vm-test"
	location = "westeurope"
    nic_name = "nic_vm_test"
    admin_username = "aleyaley"
}