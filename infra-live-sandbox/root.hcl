generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite"
    contents = <<EOF
provider "azurerm" {
    features {}
    subscription_id = "${local.account_id}"  //location.hcl
}
EOF
}