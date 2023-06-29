// *** Azure Subnet Outputs ***
output "vnet_subnets" {
  description = ""
  value       = azurerm_subnet.snet
}
output "subnet_ids" {
  value = values(azurerm_subnet.snet)[*].id
}