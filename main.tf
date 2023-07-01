provider "azurerm" {
  features {}

  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
  subscription_id = var.ARM_SUBSCRIPTION_ID
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "karunakar1008organization"
    workspaces {
      name = "terraformclouddemo"
    }
  }
}

resource "azurerm_resource_group" "rg1" {
  name     = var.rgname
  location = var.location
  tags = {
    Environment = "Terraform Demo"
    Location = "East us"
  }
}