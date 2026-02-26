variable "location" {

}

variable "rg_name" {
  
}

variable "vnet_name" {
  
}
variable "subnet_name" {
  
}

# variable "vm_name" {
  
# }

# variable "admin_username" {
  
# }

# variable "admin_password" {
  
# }

# variable "bastion_name" {}

# variable "bastion_subnet_cidr" {}

#----------aks----------

variable "aks_cluster_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "node_count" {
  type = number
}

variable "vm_size" {
  type = string
}

variable "kubernetes_version" {
  type = string
}

variable "enable_private_cluster" {
  type = bool
}

variable "tags" {
  type = map(string)
}