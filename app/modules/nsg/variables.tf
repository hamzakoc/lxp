// *** Azure Network Security Groups Variables ***
variable "resource_group_name" {
  type        = string
  description = ""
}
variable "location" {
  type        = string
  description = ""
}
variable "nsgs" {
  type        = any
  description = ""
}
