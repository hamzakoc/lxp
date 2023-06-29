// *** Networking Stack Outputs
output "subnet_ids" {
  value = module.snet_networking.subnet_ids
}
output "resource_group_name" {
  value = module.rg_networking.name
}
output "aks_subnet_id" {
  value = module.snet_networking.subnet_ids[0]
}