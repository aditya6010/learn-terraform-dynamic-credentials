provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

#resource "azurerm_resource_group" "example" {
 # name     = "dynamic-test"
 # location = var.azure_location
#}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = var.azure_location
  resource_group_name = "dynamic-test"
}

resource "azurerm_subnet" "example" {
  name                 = "internal"
  resource_group_name  = "dynamic-test"
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}

