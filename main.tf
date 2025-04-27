module "azure_arc_gateway" {
  source                        = "./modules/azure-arc-gateway"
  azure_arc_gateway_api_version = var.azure_arc_gateway_api_version
  azure_arc_gateway_name        = var.azure_arc_gateway_name
  azure_arc_gateway_type        = var.azure_arc_gateway_type
  resource_group_name           = var.resource_group_name
}