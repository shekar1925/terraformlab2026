variable "location" {
  default = "East US"
}

variable "rg_name" {
  default = "rg-demo-vm"
}

variable "vnet_name" {
  default = " "
}
variable "subnet_name" {
  default = "subnet-demo"
}

variable "vm_name" {
  default = "vm-demo"
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_password" {
  sensitive = true
}

variable "bastion_name" {}

variable "bastion_subnet_cidr" {}