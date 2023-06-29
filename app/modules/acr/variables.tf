// *** Azure Container Registery (ACR) Variables ***
variable "acr_name" {
  description = ""
  type        = string
}
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "sku" {
  description = ""
  type        = string
}
variable "admin_enabled" {
  description = ""
  type        = bool
}
variable "anonymous_pull_enabled" {
  description = ""
  type        = string
}
variable "data_endpoint_enabled" {
  description = ""
  type        = string
}
variable "public_network_access_enabled" {
  description = ""
  type        = string
}
variable "default_action" {
  description = ""
  type        = string
}
variable "ip_rule" {
  description = ""
  type        = any
}
variable "virtual_network" {
  description = ""
  type        = any
}
# variable "acr_identity_ids" {
#   description = ""
#   type        = any
# }
# variable "acr_identity_type" {
#   description = ""
#   type        = any
# }

// *** Georeplications-1 Variables ***
# variable "georeplications_1_location" {
#   description = ""
#   type        = string
# }
# variable "zone_redundancy_1_enabled" {
#   description = ""
#   type        = string
# }
# variable "georeplications_1_tags" {
#   description = ""
#   type        = map(any)
# }

// *** Georeplications-2 Variables ***
# variable "georeplications_2_location" {
#   description = ""
#   type        = string
# }
# variable "zone_redundancy_2_enabled" {
#   description = ""
#   type        = string
# }
# variable "georeplications_2_tags" {
#   description = ""
#   type        = map(any)
# }