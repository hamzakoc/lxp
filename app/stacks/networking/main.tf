// *** Create Resourge Group For Networking Stack ***
module "rg_networking" {
  source              = "../../modules/rg"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Virtual Network For Networking Stack ***
module "vnet_networking" {
  source              = "../../modules/vnet"
  resource_group_name = module.rg_networking.name
  location            = module.rg_networking.location
  vnet_name           = var.virtual_network_name
  address_space       = var.address_space
  address_spaces      = var.address_spaces
  dns_servers         = var.dns_servers
  tags                = var.vnet_tags
  depends_on = [
    module.rg_networking
  ]
}

// *** Create Subnet For Networking Stack ***
module "snet_networking" {
  source              = "../../modules/snet"
  resource_group_name = module.rg_networking.name
  location            = module.rg_networking.location
  vnet_name           = module.vnet_networking.name
  subnets             = var.subnets
  depends_on = [
    module.rg_networking, module.vnet_networking
  ]
}

// *** Create Network Security Group For Networking Stack ***
module "nsg_networking" {
  source              = "../../modules/nsg"
  resource_group_name = module.rg_networking.name
  location            = module.rg_networking.location
  nsgs                = var.subnets
  depends_on = [
    module.rg_networking, module.snet_networking
  ]
}

// *** Create Network Security Group Assoc For Networking Stack ***
module "nsg_assoc_networking" {
  source              = "../../modules/nsg_assoc"
  resource_group_name = module.rg_networking.name
  location            = module.rg_networking.location
  subnet_ids          = module.snet_networking.subnet_ids
  subnets             = var.subnets
  nsg_ids             = module.nsg_networking.nsg_ids
  vnet_name           = module.vnet_networking.name
  depends_on = [
    module.rg_networking, module.vnet_networking, module.snet_networking
  ]
}