// *** Azure Container Registery (ACR) ***
resource "azurerm_container_registry" "az_container_registry" {
  name                          = var.acr_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.sku
  admin_enabled                 = var.admin_enabled
  anonymous_pull_enabled        = var.anonymous_pull_enabled
  data_endpoint_enabled         = var.data_endpoint_enabled
  public_network_access_enabled = var.public_network_access_enabled
  network_rule_set = [
    {
      default_action  = var.default_action
      ip_rule         = var.ip_rule
      virtual_network = var.virtual_network
    },
  ]
  # identity {
  #   identity_ids = var.acr_identity_ids
  #   type = var.acr_identity_type
  # }
  // First Georeplications
  # georeplications {
  #   location                = var.georeplications_1_location
  #   zone_redundancy_enabled = var.zone_redundancy_1_enabled
  #   tags                    = var.georeplications_1_tags
  # }

  // Second Georeplications
  # georeplications {
  #   location                = var.georeplications_2_location
  #   zone_redundancy_enabled = var.zone_redundancy_2_enabled
  #   tags                    = var.georeplications_2_tags
  # }
}