terraform {
    source = "../../../modules/virtual-machine"
}

include "root" {
    path = find_in_parent_folders("root.hcl") 
}

dependency "key_vault" {
    config_path = "../key_vault"
}

dependency "resource_group" {
    config_path = "../resource_group"
}

locals {
  app_config      = read_terragrunt_config(find_in_parent_folders("app.hcl"))
  location_config = read_terragrunt_config(find_in_parent_folders("location.hcl"))
  env_config = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

//name = vm-ils-dev
inputs = {
    name = "${local.app_config.locals.application_shortname}-${local.env_config.locals.environment_shortname}"
    resource_group_name = dependency.resource_group.outputs.name
    // key_vault_name = dependency.key_vault.outputs.name
    key_vault_id = dependency.key_vault.outputs.id
    location = local.location_config.locals.location_shortname

}
