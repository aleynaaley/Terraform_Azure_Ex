terraform {
    source = "../../../modules/key-vault"
}

include "root" {
    path = find_in_parent_folders("root.hcl")
}

dependency "resource_group" {
	config_path = "../resource_group"
}

locals {
  app_config      = read_terragrunt_config(find_in_parent_folders("app.hcl"))
  location_config = read_terragrunt_config(find_in_parent_folders("location.hcl"))
  env_config = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

// name = kv-ils-dev
inputs = {
    name = "kv-${local.app_config.locals.application_shortname}-${local.env_config.locals.environment_shortname}"
    resource_group_name = dependency.resource_group.outputs.name
    location = local.location_config.locals.location_shortname
}