// *** Resource Group Variables ***
variable "location" {
  description = ""
  type        = string
}
variable "tags" {
  description = ""
  type        = map(any)
}

// *** SQL Variables ***
variable "incremental_number" {
  type = string
}
variable "org_name" {
  description = "Type name of the organization"
  type        = string
}
variable "workload" {
  description = "Type name of the workload"
  type        = string
}
variable "mssql_server_name" {
  type = string
}
variable "server_version" {
  type = string
}
variable "administrator_login" {
  type = string
}
variable "administrator_login_password" {
  type = string
}
variable "mssql_database_name" {
  type = string
}
variable "collation" {
  type = string
}
variable "license_type" {
  type = string
}
variable "read_scale" {
  type = string
}
variable "sku_name" {
  type = string
}
variable "zone_redundant" {
  type = string
}