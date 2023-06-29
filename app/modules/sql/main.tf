// *** Azure MSSQL Server ***
resource "azurerm_mssql_server" "mssql_server" {
  name                         = var.mssql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.server_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  connection_policy = var.connection_policy
  tags              = var.tags
  azuread_administrator {
    azuread_authentication_only = var.azuread_authentication_only
    login_username              = var.azuread_login_username
    object_id                   = var.azuread_object_id
    tenant_id                   = var.azuread_tenant_id
  }
}