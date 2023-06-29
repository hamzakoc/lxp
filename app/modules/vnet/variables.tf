// *** Azure Virtual Network Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "vnet_name" {
  description = ""
  type        = string
}
variable "address_space" {
  description = ""
  type        = string
}
variable "address_spaces" {
  description = ""
  type        = list(string)
}
variable "dns_servers" {
  description = ""
  type        = list(string)
}
variable "tags" {
  description = ""
  type        = map(any)
}