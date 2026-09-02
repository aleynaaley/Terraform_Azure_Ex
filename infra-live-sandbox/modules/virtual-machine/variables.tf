variable "name" {
    type = string
}

variable "location" {
    type = string
}

variable "resource_group_name" {
    type = string
}

variable "key_vault_id" {
    type = string
}


variable "vm_size" {
    type = string
    default = "Standard_F1as_v7"
}

variable "admin_username" {
    type = string
    default = "aleyaley"
}
