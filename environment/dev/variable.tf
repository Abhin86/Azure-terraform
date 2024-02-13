variable "resource_group_name" {
  type        = string
  default     = "abhinachu-functions-rg"
}

variable "storage_account_name" {
  type        = string
  default     = "abhinachufunctionsa"
}

variable "service_plan_name" {
  type        = string
  default     = "abhinachu-python-service-plan"
}

variable "azurerm_linux_function_app"{
    type        = string
    default     = "abhinachu-python-function"
}

variable "location" {
  type        = string
  default     = "eastus"
}