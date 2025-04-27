terraform {
  #cloud {
  #  organization = "HCP-organization"
  #  workspaces {
  #    name = "azure-arc-gateway-terraform"
  #  }
  #}

  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = ">= 2.3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.27.0"
    }
  }
}

provider "azapi" {}

provider "azurerm" {
  features {}
}