// *** Azure MSSQL Server Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "mssql_server_name" {
  description = ""
  type        = string
}
variable "server_version" {
  description = ""
  type        = string
}
variable "administrator_login" {
  description = ""
  type        = string
}
variable "administrator_login_password" {
  description = ""
  type        = string
}

variable "connection_policy" {
  description = ""
  type        = string
}
variable "tags" {
  description = ""
  type        = any
}
variable "azuread_authentication_only" {
  description = ""
  type        = string
}
variable "azuread_login_username" {
  description = ""
  type        = string
}
variable "azuread_object_id" {
  description = ""
  type        = string
}
variable "azuread_tenant_id" {
  description = ""
  type        = string
}
