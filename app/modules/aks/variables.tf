// *** Azure Kubernetes Service Variables ***
variable "kubernetes_cluster_name" {
  description = ""
  type        = string
}
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "dns_prefix" {
  description = ""
  type        = string
}
variable "azure_policy_enabled" {
  description = ""
  type        = string
}
variable "enable_pod_security_policy" {
  description = ""
  type        = string
}
variable "kubernetes_version" {
  description = ""
  type        = string
}
variable "local_account_disabled" {
  description = ""
  type        = string
}
variable "http_application_routing_enabled" {
  description = ""
  type        = string
}
variable "node_resource_group" {
  description = ""
  type        = string
}
variable "oidc_issuer_enabled" {
  description = ""
  type        = string
}
variable "open_service_mesh_enabled" {
  description = ""
  type        = string
}
variable "sku_tier" {
  description = ""
  type        = string
}
variable "aks_cluster_tags" {
  description = ""
  type        = any
}
// oms_agent
# variable "log_analytics_workspace_id" {
#   description = ""
#   type        = string
# }

//  azure_active_directory_role_based_access_control 
variable "admin_group_object_ids" {
  description = ""
  type        = any
}
variable "azure_rbac_enabled" {
  description = ""
  type        = string
}
variable "managed" {
  description = ""
  type        = string
}
variable "tenant_id" {
  description = ""
  type        = string
}
//auto_scaler_profile
variable "balance_similar_node_groups" {
  description = ""
  type        = string
}
variable "empty_bulk_delete_max" {
  description = ""
  type        = string
}
variable "expander" {
  description = ""
  type        = string
}
variable "max_graceful_termination_sec" {
  description = ""
  type        = string
}
variable "max_node_provisioning_time" {
  description = ""
  type        = string
}
variable "max_unready_nodes" {
  description = ""
  type        = string
}
variable "max_unready_percentage" {
  description = ""
  type        = string
}
variable "new_pod_scale_up_delay" {
  description = ""
  type        = string
}
variable "scale_down_delay_after_add" {
  description = ""
  type        = string
}
variable "scale_down_delay_after_delete" {
  description = ""
  type        = string
}
variable "scale_down_delay_after_failure" {
  description = ""
  type        = string
}
variable "scale_down_unneeded" {
  description = ""
  type        = string
}
variable "scale_down_unready" {
  description = ""
  type        = string
}
variable "scale_down_utilization_threshold" {
  description = ""
  type        = string
}
variable "scan_interval" {
  description = ""
  type        = string
}
variable "skip_nodes_with_local_storage" {
  description = ""
  type        = string
}
variable "skip_nodes_with_system_pods" {
  description = ""
  type        = string
}
// *** Default Node Pool Variables ***
variable "default_node_pool_name" {
  description = ""
  type        = string
}
variable "default_node_pool_node_count" {
  description = ""
  type        = any
}
variable "default_node_pool_vm_size" {
  description = ""
  type        = string
}
variable "enable_auto_scaling" {
  description = ""
  type        = string
}
variable "enable_host_encryption" {
  description = ""
  type        = string
}
variable "enable_node_public_ip" {
  description = ""
  type        = string
}
variable "fips_enabled" {
  description = ""
  type        = string
}
variable "kubelet_disk_type" {
  description = ""
  type        = string
}
variable "max_count" {
  description = ""
  type        = string
}
variable "max_pods" {
  description = ""
  type        = string
}
variable "min_count" {
  description = ""
  type        = string
}
variable "vnet_subnet_id" {
  description = ""
  type        = string
}
variable "node_taints" {
  description = ""
  type        = any
}
variable "only_critical_addons_enabled" {
  description = ""
  type        = string
}
variable "orchestrator_version" {
  description = ""
  type        = string
}
variable "os_disk_size_gb" {
  description = ""
  type        = string
}
variable "os_sku" {
  description = ""
  type        = string
}
variable "node_labels" {
  description = ""
  type        = any
}
variable "default_node_tags" {
  description = ""
  type        = any
}
variable "zones" {
  description = ""
  type        = any
}
// *** Identity Variables
variable "identity_type" {
  description = ""
  type        = string
}
