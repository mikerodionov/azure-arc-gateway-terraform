locals {
  gateway_resource         = "Microsoft.HybridCompute/gateways"
  gateway_allowed_features = ["*"]
}

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azapi_resource" "arc_gateway" {
  type      = "${local.gateway_resource}@${var.arc_gateway_api_version}"
  name      = var.arc_gateway_name
  parent_id = data.azurerm_resource_group.rg.id

  location = data.azurerm_resource_group.rg.location

  body = {
    properties = {
      allowedFeatures = local.gateway_allowed_features
      gatewayType     = var.arc_gateway_type
    }
  }

  tags = {
    "Terraform" = "True"
  }
}

resource "azurerm_management_lock" "arc_gateway_lock" {
  name       = "Azure Arc Gateway Lock"
  scope      = azapi_resource.arc_gateway.id
  lock_level = "CanNotDelete"
  notes      = "Azure Arc Gateway is read-only!"
}