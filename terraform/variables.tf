variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where the resources will be created"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
}

variable "subnets" {
  description = "A list of subnets to create"
  type = list(object({
    name           = string
    address_prefix = string
  }))
}
variable "vnet_name_2" {
  description = "The name of the virtual network"
  type        = string
}

variable "address_space_2" {
  description = "The address space of the virtual network"
  type        = list(string)
}

variable "subnets_2" {
  description = "A list of subnets to create"
  type = list(object({
    name           = string
    address_prefix = string
  }))
}
