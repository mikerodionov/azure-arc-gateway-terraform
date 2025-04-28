output "azure_arc_gateway_url" {
  value = azapi_resource.azure_arc_gateway.output.properties.gatewayEndpoint
  description = "Azure Arc gateway URL."  
}

output "azure_arc_gateway_resource_id" {
  value = azapi_resource.azure_arc_gateway.output.id
  description = "Azure Arc gateway Resource ID."  
}