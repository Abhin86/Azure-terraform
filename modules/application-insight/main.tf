resource "azurerm_application_insights" "linux-application-insights" {
  name                = "application-insights-${var.azurerm_linux_function_app}"
  location            = var.location #"${azurerm_resource_group.linux-function-rg.location}"
  resource_group_name =  var.resource_group_name   #"${azurerm_resource_group.linux-function-rg.name}"
  application_type    = "other"
}

