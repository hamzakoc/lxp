// *** Azure Network Security Group Assoc Variables 
variable "resource_group_name" {
  type        = string
  description = ""
}
variable "location" {
  type        = string
  description = ""
}
variable "vnet_name" {
  type        = string
  description = ""
}
variable "subnet_ids" {
  type        = any
  description = ""
}
variable "subnets" {
  type        = any
  description = ""
}
variable "nsg_ids" {
  type        = any
  description = ""
}