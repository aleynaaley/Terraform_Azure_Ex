locals{
    location_config = read_terragrunt_config(find_in_parent_folders("location.hcl"))
    account_id = local.location_config.locals.account_id
}

generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite"
    contents = <<EOF
provider "azurerm" {
    features {}
    subscription_id = "${local.account_id}"
}
EOF
}
// string interpolation
