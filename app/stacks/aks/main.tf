
// *** Create Resource Group ***
module "caps_rg" {
  source              = "../../modules/rg"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.rg_tags
}

// *** Create Az Kubernetes Service ***
module "aks" {
  source                           = "../../modules/aks"
  kubernetes_cluster_name          = var.kubernetes_cluster_name
  location                         = module.caps_rg.location
  resource_group_name              = module.caps_rg.name
  dns_prefix                       = var.dns_prefix
  azure_policy_enabled             = var.azure_policy_enabled
  enable_pod_security_policy       = var.enable_pod_security_policy
  kubernetes_version               = var.kubernetes_version
  local_account_disabled           = var.local_account_disabled
  http_application_routing_enabled = var.http_application_routing_enabled
  node_resource_group              = var.node_resource_group
  oidc_issuer_enabled              = var.oidc_issuer_enabled
  open_service_mesh_enabled        = var.open_service_mesh_enabled
  sku_tier                         = var.sku_tier
  aks_cluster_tags                 = var.aks_cluster_tags

  //RBAC
  admin_group_object_ids = var.admin_group_object_ids
  azure_rbac_enabled     = var.azure_rbac_enabled
  managed                = var.managed
  tenant_id              = var.tenant_id

  //auto_scaler_profile
  balance_similar_node_groups      = var.balance_similar_node_groups
  empty_bulk_delete_max            = var.empty_bulk_delete_max
  expander                         = var.expander
  max_graceful_termination_sec     = var.max_graceful_termination_sec
  max_node_provisioning_time       = var.max_node_provisioning_time
  max_unready_nodes                = var.max_unready_nodes
  max_unready_percentage           = var.max_unready_percentage
  new_pod_scale_up_delay           = var.new_pod_scale_up_delay
  scale_down_delay_after_add       = var.scale_down_delay_after_add
  scale_down_delay_after_delete    = var.scale_down_delay_after_delete
  scale_down_delay_after_failure   = var.scale_down_delay_after_failure
  scale_down_unneeded              = var.scale_down_unneeded
  scale_down_unready               = var.scale_down_unready
  scale_down_utilization_threshold = var.scale_down_utilization_threshold
  scan_interval                    = var.scan_interval
  skip_nodes_with_local_storage    = var.skip_nodes_with_local_storage
  skip_nodes_with_system_pods      = var.skip_nodes_with_system_pods

  //Default Node
  default_node_pool_name       = var.default_node_pool_name
  default_node_pool_node_count = var.default_node_pool_node_count
  default_node_pool_vm_size    = var.default_node_pool_vm_size
  enable_auto_scaling          = var.enable_auto_scaling
  enable_host_encryption       = var.enable_host_encryption
  enable_node_public_ip        = var.enable_node_public_ip
  fips_enabled                 = var.fips_enabled
  kubelet_disk_type            = var.kubelet_disk_type
  max_count                    = var.max_count
  max_pods                     = var.max_pods
  min_count                    = var.min_count
  vnet_subnet_id               = var.vnet_subnet_id
  node_taints                  = var.node_taints
  only_critical_addons_enabled = var.only_critical_addons_enabled
  orchestrator_version         = var.orchestrator_version
  os_disk_size_gb              = var.os_disk_size_gb
  os_sku                       = var.os_sku
  node_labels                  = var.node_labels
  default_node_tags            = var.default_node_tags
  zones                        = var.zones
  identity_type                = var.identity_type

}
