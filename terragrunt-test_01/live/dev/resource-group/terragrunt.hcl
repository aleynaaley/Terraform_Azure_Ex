terraform {
  source = "../../../modules/resource-group"
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "azurerm" {
  features {}
}
EOF
}


inputs = {
  name = "terragrunt-test-rg"
  location = "westeurope"
}


