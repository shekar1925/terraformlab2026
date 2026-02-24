variable "name" {
  description = "Bastion Host Name"
  type        = string
}

variable "location" {
  description = "Azure Location"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
}

variable "bastion_subnet_cidr" {
  description = "CIDR for Bastion Subnet"
  type        = string
}

variable "sku" {
  description = "Bastion SKU"
  type        = string
  default     = "Standard"
}