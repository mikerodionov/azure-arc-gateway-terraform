output "arc_gateway_url" {
  value = azapi_resource.arc_gateway.output.properties.gatewayEndpoint
}

output "arc_gateway_resource_id" {
  value = azapi_resource.arc_gateway.output.id
}