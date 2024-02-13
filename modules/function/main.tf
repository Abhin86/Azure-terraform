resource "azurerm_linux_function_app" "linux-python-linux-function-app" {
  name                = var.azurerm_linux_function_app
  resource_group_name = var.resource_group_name #azurerm_resource_group.linux-function-rg.name
  location            = var.location #azurerm_resource_group.linux-function-rg.location
  # public_network_access_enabled = false    #added to clear checkov
  
  service_plan_id            = var.id #azurerm_service_plan.linux-service-plan.id
  storage_account_name       = var.storage_account_name #azurerm_storage_account.linux-storage-account.name
  storage_account_access_key = var.primary_access_key #azurerm_storage_account.linux-storage-account.primary_access_key
  https_only                 = true
  site_config {
    application_insights_key = var.instrumentation_key #azurerm_application_insights.linux-application-insights.instrumentation_key
    application_insights_connection_string = var.connection_string #azurerm_application_insights.linux-application-insights.connection_string
    application_stack {
        python_version = 3.11 #FUNCTIONS_WORKER_RUNTIME        
  }
  }
  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.instrumentation_key #"${azurerm_application_insights.linux-application-insights.instrumentation_key}"
  }
}