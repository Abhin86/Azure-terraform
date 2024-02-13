resource "azurerm_service_plan" "linux-service-plan" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name   #azurerm_resource_group.linux-function-rg.name
  location            = var.location   #azurerm_resource_group.linux-function-rg.location
  os_type             = "Linux"
  sku_name            = "Y1"
}