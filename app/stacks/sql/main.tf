module "mssql_rg" {
  source              = "../../modules/rg"
  resource_group_name = "rg-mssql-dms1-${var.location}"
  location            = var.location
  tags                = var.tags
}

module "sql_server" {
  source                       = "../../modules/sql"
  mssql_server_name            = var.mssql_server_name
  mssql_database_name          = var.mssql_database_name
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  license_type                 = var.license_type
  read_scale                   = var.read_scale
  sku_name                     = var.sku_name
  zone_redundant               = var.zone_redundant
  server_version               = var.server_version
  collation                    = var.collation
  resource_group_name          = module.mssql_rg.name
  location                     = var.location
  depends_on = [
    module.mssql_rg
  ]
}