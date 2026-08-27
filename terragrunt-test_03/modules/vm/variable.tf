variable "nic_name" {
    type = string
}

variable "vm_name" {
    type = string
}   

variable "location" {
    type = string
}

// rg dependency den gelecek
variable "resource_group_name" {
    type = string   
}

//vnet terragrunt dan gelecek
variable "subnet_id" {
    type = string
}

variable "vm_size" {
    type = string
    default = "Standard_F1as_v7"
}

variable "admin_username" {
    type = string
}

