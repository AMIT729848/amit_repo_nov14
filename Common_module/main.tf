module "rg" {
  source = "../azurerm_resource_group"
  rgs    = var.resource_group
}

module "vnet" {
  source     = "../azurerm_vnet_group"
  vnets      = var.vnet_group
  depends_on = [module.rg]

}

module "storage_account" {
  source           = "../azurerm_storage_group"
  storage_accounts = var.storages
  depends_on       = [module.rg]

}