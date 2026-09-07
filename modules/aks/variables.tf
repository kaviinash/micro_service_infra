variable "aks_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for AKS"
}

variable "node_count" {
  type        = number
  description = "Number of nodes"

  default = 1
}

variable "vm_size" {
  type        = string
  description = "VM size for AKS nodes"

  default = "Standard_B2s"
}
