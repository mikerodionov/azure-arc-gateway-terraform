locals {
  gateway_resource         = "Microsoft.HybridCompute/gateways"
  gateway_allowed_features = ["*"]
}

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azapi_resource" "azure_arc_gateway" {
  type      = "${local.gateway_resource}@${var.azure_arc_gateway_api_version}"
  name      = var.azure_arc_gateway_name
  parent_id = data.azurerm_resource_group.rg.id

  location = data.azurerm_resource_group.rg.location

  body = {
    properties = {
      allowedFeatures = local.gateway_allowed_features
      gatewayType     = var.azure_arc_gateway_type
    }
  }

  tags = var.tags
}

resource "azurerm_management_lock" "azure_arc_gateway_lock" {
  name       = "Azure Arc Gateway Lock"
  scope      = azapi_resource.azure_arc_gateway.id
  lock_level = "CanNotDelete"
  notes      = "Azure Arc Gateway is read-only!"
}