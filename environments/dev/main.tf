module "resource_group" {
  source = "../../modules/resource_group"

  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}


module "aks" {
  source = "../../modules/aks"

  aks_name            = var.aks_name
  location            = var.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  dns_prefix          = var.dns_prefix
}


module "acr" {
  source = "../../modules/acr"

  acr_name            = var.acr_name
  location            = var.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
}
