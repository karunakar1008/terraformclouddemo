provider "azurerm" {
  features {}
}

terraform {
  required_version = "~> 1.0"
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