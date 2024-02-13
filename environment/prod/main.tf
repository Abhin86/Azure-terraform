module "Resource-group" {
  source = "../../modules/Resource-group"
  location = var.location
  resource_group_name = var.resource_group_name
}

module "storage-account" {
  source = "../../modules/Storage-account"
  resource_group_name = var.resource_group_name
  location = var.location
  storage_account_name = var.storage_account_name
  depends_on = [ module.Resource-group ]
}

module "service-plan" {
  source = "../../modules/service-plan"
  location = var.location
  service_plan_name = var.service_plan_name
  resource_group_name = var.resource_group_name
  depends_on = [ module.Resource-group ]
}

module "application-insights" {
  source = "../../modules/application-insight"
  azurerm_linux_function_app = var.azurerm_linux_function_app
  resource_group_name = var.resource_group_name
  location = var.location
  depends_on = [ module.Resource-group ]
}

module "function" {
  source = "../../modules/function"
  location = var.location
  storage_account_name = var.storage_account_name
  id = module.service-plan.service_plan_id
  connection_string = module.application-insights.connection_string
  resource_group_name = var.resource_group_name
  instrumentation_key = module.application-insights.instrumentation_key
  primary_access_key = module.storage-account.primary_access_key
  depends_on = [ module.Resource-group ]
}