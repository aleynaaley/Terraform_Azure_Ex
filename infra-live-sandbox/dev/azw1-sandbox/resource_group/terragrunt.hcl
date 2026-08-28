terraform {
    source = "../../../modules/resource-group"
}

include "root" {
    path = find_in_parent_folders("root.hcl")
}

locals {
  app_config      = read_terragrunt_config(find_in_parent_folders("app.hcl"))
  location_config = read_terragrunt_config(find_in_parent_folders("location.hcl"))
  env_config = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

// name == rg-[ils-dev]
inputs = {
    name = "${local.app_config.locals.application_shortname}-${local.env_config.locals.environment_shortname}"
    location = local.location_config.locals.location_shortname
}