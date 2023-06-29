
data "azurerm_network_security_group" "snet" {
  for_each            = var.subnets
  name                = each.value.nsg.name
  resource_group_name = var.resource_group_name
}

data "azurerm_subnet" "snet" {
  for_each             = var.subnets
  name                 = each.key
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "nsg-assoc" {
  for_each                  = var.subnets
  subnet_id                 = data.azurerm_subnet.snet[each.key].id
  network_security_group_id = data.azurerm_network_security_group.snet[each.key].id
}