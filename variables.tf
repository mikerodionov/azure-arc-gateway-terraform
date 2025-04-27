variable "arc_gateway_api_version" {
  type        = string
  default     = "2024-11-10-preview"
  description = "The currently available API versions for Arc Gateway (last updated 04/27/2025)."

  validation {
    error_message = "Please use a valid API version."
    condition = can(regex(join("", concat(["^("], [join("|", [
      "2024-11-10-preview", "2024-09-10-preview", "2024-07-31-preview",
      "2024-07-10", "2024-05-20-preview", "2024-03-31-preview"
    ])], [")$"])), var.arc_gateway_api_version))
  }
}

variable "arc_gateway_name" {
  type        = string
  description = "Arc Gateway Name."
}

variable "arc_gateway_type" {
  type        = string
  default     = "Public"
  description = "The currently available Arc Gateway type(s) (last updated 04/27/2025)."

  validation {
    error_message = "Please use a valid Arc Gateway type. At present (last updated 04/26/2025) only 'Public' is allowed."
    condition     = contains(["Public"], var.arc_gateway_type)
  }
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name."
}