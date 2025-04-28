output "azure_arc_gateway_url" {
  value       = module.azure_arc_gateway.azure_arc_gateway_url
  description = "Azure Arc gateway URL."
}

output "azure_arc_gateway_resource_id" {
  value       = module.azure_arc_gateway.azure_arc_gateway_resource_id
  description = "Azure Arc gateway Resource ID."
}