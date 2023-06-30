provider "azurerm" {
  features {}

  client_id       = ""
  client_secret   = ""
  tenant_id       = "8cc43bd7-7ce3-4367-a385-af74133d7b54"
  subscription_id = "4cdfe344-51e1-4d70-a1f6-9d156be922e2"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
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