terraform {
  source = "../../../modules/resource-group"
}

include {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name = "terragrunt-test"
  location = "westeurope"
}


