variable "azure_arc_gateway_api_version" {
  type        = string
  default     = "2024-11-10-preview"
  description = "The currently available API versions for Azure Arc gateway (last updated 04/27/2025)."

  validation {
    error_message = "Please use a valid API version."
    condition = can(regex(join("", concat(["^("], [join("|", [
      "2025-02-19-preview",
      "2025-01-13",
      "2024-11-10-preview",
      "2024-09-10-preview",
      "2024-07-31-preview",
      "2024-07-10",
      "2024-05-20-preview",
      "2024-03-31-preview"
    ])], [")$"])), var.azure_arc_gateway_api_version))
  }
}

variable "azure_arc_gateway_name" {
  type        = string
  description = "Azure Arc gateway Name."
}

variable "azure_arc_gateway_type" {
  type        = string
  default     = "Public"
  description = "The currently available Azure Arc gateway type(s) (last updated 04/27/2025)."

  validation {
    error_message = "Please use a valid Azure Arc gateway type. At present (last updated 04/26/2025) only 'Public' is allowed."
    condition     = contains(["Public"], var.azure_arc_gateway_type)
  }
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name."
}

variable "tags" {
  type = map(string)
  default = {
    Terraform  = "True"
  }
}
