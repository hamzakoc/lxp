resource "azurerm_redis_cache" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = var.minimum_tls_version

  redis_configuration {
  }
}

variable "name" {
  type = string
}
variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "capacity" {
  type = string
}
variable "family" {
  type = string
}
variable "sku_name" {
  type = number
}
variable "enable_non_ssl_port" {
  type = bool
}
variable "minimum_tls_version" {
  type = any
}