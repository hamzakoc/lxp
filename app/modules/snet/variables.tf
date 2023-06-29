// *** Azure Subnet Variables***
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
variable "subnets" {
  description = ""
  type        = any
}