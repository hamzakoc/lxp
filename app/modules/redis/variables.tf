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