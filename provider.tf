terraform {
  #cloud {
  #  organization = "<HCP-organization>"
  #  workspaces {
  #    name = "azure-arc-gateway-terraform"
  #  }
  #}

  required_providers {
    azapi = {
      source = "Azure/azapi"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azapi" {}

provider "azurerm" {
  features {}
}