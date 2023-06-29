// *** Azure Network Security Groups Outputs ***
output "nsg_ids" {
  value = values(azurerm_network_security_group.nsg)[*].id
}