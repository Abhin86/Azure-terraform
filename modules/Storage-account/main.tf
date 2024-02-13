resource "azurerm_storage_account" "linux-storage-account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name    #  azurerm_resource_group.linux-function-rg.name
  location                 = var.location     #azurerm_resource_group.linux-function-rg.location
  account_tier             = "Standard"
  # shared_access_key_enabled = false       #added to check checkov
  # allow_nested_items_to_be_public = false   #added to check checkov
  account_replication_type = "LRS"
  # queue_properties  {                        #added to check checkov
  #  logging {                                 #added to check checkov 
  #       delete                = true          #added to check checkov
  #       read                  = true           #added to check checkov
  #       write                 = true          #added to check checkov
  #       version               = "1.0"          #added to check checkov
  #       retention_policy_days = 10             #added to check checkov
  #   }                                          #added to check checkov
  # }                                            #added to check checkov
}