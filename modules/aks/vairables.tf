variable "resource_group_name" {
}

variable "location" {
}

variable "aks_cluster_name" {

}

variable "dns_prefix" {

}

variable "kubernetes_version" {

}

variable "node_count" {

}

variable "vm_size" {

}

variable "vnet_subnet_id" {

}

variable "enable_private_cluster" {

}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}