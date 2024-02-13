variable "azurerm_linux_function_app"{
    type        = string
    default     = "abhinachu-python-function"
}

variable "resource_group_name" {
  type        = string
#   default     = "abhinachu-functions-rg"
}

variable "location" {
  type        = string
#   default     = "abhinachu-functions-rg"
}

variable "storage_account_name" {
  type        = string
#   default     = "abhinachufunctionsa"
}

variable "id" {
  type        = string
#   default     = "abhinachu-python-service-plan"
}

variable "primary_access_key" {
  type        = string
#   default     = "abhinachu-python-service-plan"
}


variable "instrumentation_key" {
  type        = string
#   default     = "abhinachu-python-service-plan"
}


variable "connection_string" {
  type        = string
#   default     = "abhinachu-python-service-plan"
}
