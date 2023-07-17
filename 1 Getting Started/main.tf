# Terraform Provider(s)
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}


# Configuring AzureRM provider
provider "azurerm" {
  features {}
}


# Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location_name
}


# Virtual Network
resource "azurerm_virtual_network" "example" {
  name                = var.network_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = var.network_address_space
}
