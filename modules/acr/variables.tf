variable "acr_name" {
  type        = string
  description = "Name of the Azure Container Registry"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "sku" {
  type        = string
  description = "ACR SKU"

  default = "Basic"
}

variable "admin_enabled" {
  type        = bool
  description = "Enable admin user"

  default = false
}