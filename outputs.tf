output "azure_arc_gateway_url" {
  value       = module.azure_arc_gateway.azure_arc_gateway_url
  description = "Azure Arc Gateway URL."
}

output "azure_arc_gateway_resource_id" {
  value       = module.azure_arc_gateway.azure_arc_gateway_resource_id
  description = "Azure Arc Gateway Resource ID."
}