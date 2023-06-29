// *** Resource Group Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "tags" {
  description = ""
  type        = map(any)
}

// *** Azure Virtual Network Variables ***
variable "virtual_network_name" {
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
variable "vnet_tags" {
  description = ""
  type        = map(any)
}

// *** Azure Subnet Variables ***
variable "subnets" {
  description = ""
  type        = any
}

# // *** Azure Network Security Group Variables ***

# // *** Azure Network Security Rule Variables ***

# // *** Azure Network Security Group Association Variables ***

