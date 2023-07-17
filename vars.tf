variable "resource_group_name" {
  type = string
  description = "Name for our resource group"
}


variable "location_name" {
  type = string
  description = "Azure region name to deploy our resources to"
  default = "uksouth"
}

variable "network_name" {
  type = string
  description = "The name for the new virtual network"
}

variable "network_address_space" {
  type = list
  description = "A list of addresses to be used in the vNet (10.1.1.0/24)"
}