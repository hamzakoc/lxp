
/*** Resorce Group Values ***
****************************/
resource_group_name = "rg-aks-d-cc"
location = "canadacentral"
rg_tags = {

}


/*** Azure Kubernetes Service ***
*********************************/
kubernetes_cluster_name = "aks-d-cc"
dns_prefix = "aks-d-cc-dns"
default_node_pool_name = "agentpool"
default_node_pool_node_count = "1"
default_node_pool_vm_size = "Standard_B4ms"
identity_type = "SystemAssigned"
node_name = "workerpool"
node_count = 3
node_size = "Standard_B4ms"
azure_policy_enabled = false
enable_pod_security_policy = false
kubernetes_version = "1.27.1"
local_account_disabled = true
http_application_routing_enabled = false
node_resource_group = "rg-aks-nodepools-d-cc"
oidc_issuer_enabled = false
open_service_mesh_enabled = false
sku_tier = "Standard"
aks_cluster_tags = {}

//RBAC
admin_group_object_ids = []
azure_rbac_enabled     = true
managed                = true
tenant_id              = "1a93b615-8d62-418a-ac28-22501cf1f978"

//auto_scaler_profile {
balance_similar_node_groups      = false
empty_bulk_delete_max            = "10"
expander                         = "random"
max_graceful_termination_sec     = "600"
max_node_provisioning_time       = "15m"
max_unready_nodes                = 3
max_unready_percentage           = 45
new_pod_scale_up_delay           = "0s"
scale_down_delay_after_add       = "10m"
scale_down_delay_after_delete    = "10s"
scale_down_delay_after_failure   = "3m"
scale_down_unneeded              = "10m"
scale_down_unready               = "20m"
scale_down_utilization_threshold = "0.5"
scan_interval                    = "10s"
skip_nodes_with_local_storage    = false
skip_nodes_with_system_pods      = true 

//default_node_pool
enable_auto_scaling          = true
enable_host_encryption       = false
enable_node_public_ip        = false
fips_enabled                 = false
kubelet_disk_type            = "OS"
max_count                    = 3
max_pods                     = 110
min_count                    = 1
vnet_subnet_id               = "/subscriptions/2eb0db08-020e-458f-ad72-d13fdc171130/resourceGroups/rg-networking-dev-canadacentral/providers/Microsoft.Network/virtualNetworks/vnet-d-cc/subnets/snet-aks-d-cc"
node_taints                  = []
only_critical_addons_enabled = false
orchestrator_version = "1.27.1"
os_disk_size_gb = 128
os_sku = "Ubuntu"
node_labels = {}
default_node_tags = {}
zones = [
  "1",
  "2",
  "3",
  ]
