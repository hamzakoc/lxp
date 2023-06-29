// *** Azure Network Security Groups ***
resource "azurerm_network_security_group" "nsg" {
  for_each            = var.nsgs
  name                = each.value.nsg.name
  location            = var.location
  resource_group_name = var.resource_group_name
}

// *** NOTE: If you would like to add custom Network Security Rules, please remove the comment lines and put the values in the tfvars file.

# // *** Azure Network Security Rules ***
# resource "azurerm_network_security_rule" "nsg_security_rule" {
#   for_each                    = var.nsgs
#   name                        = each.value.security_rule.name
#   priority                    = each.value.security_rule.priority
#   direction                   = each.value.security_rule.direction
#   access                      = each.value.security_rule.access
#   protocol                    = each.value.security_rule.protocol
#   source_port_range           = each.value.security_rule.source_port_range
#   destination_port_range      = each.value.security_rule.destination_port_range
#   source_address_prefix       = each.value.security_rule.source_address_prefix
#   destination_address_prefix  = each.value.security_rule.destination_address_prefix
#   resource_group_name         = var.resource_group_name
#   network_security_group_name = each.value.nsg.name
# }