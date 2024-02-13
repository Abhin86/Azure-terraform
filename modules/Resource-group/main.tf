resource "azurerm_resource_group" "linux-function-rg" {
  name     = var.resource_group_name
  location = var.location   #   "East US"
}
