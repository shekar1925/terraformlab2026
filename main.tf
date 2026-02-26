resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  vnet_name    = var.vnet_name
  subnet_name         = var.subnet_name
}

# module "vm" {
#   source              = "./modules/vm"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = var.location
#   vm_name             = var.vm_name
#   subnet_id           = module.network.subnet_id
#   admin_username      = var.admin_username
#   admin_password      = var.admin_password
# }

# module "bastion" {
#   source = "./modules/bastion"
#   name                 = "bastion-host"
#   location             = var.location
#   resource_group_name  = azurerm_resource_group.rg.name
#   vnet_name            = module.network.vnet_name
#   bastion_subnet_cidr  = "10.0.2.0/27"
# }

module "aks" {
  source = "./modules/aks"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  aks_cluster_name = var.aks_cluster_name
  dns_prefix       = var.dns_prefix
  node_count = var.node_count
  vm_size    = var.vm_size
  vnet_subnet_id = module.network.subnet_id
  kubernetes_version     = var.kubernetes_version
  enable_private_cluster = var.enable_private_cluster
  tags = var.tags
  
}