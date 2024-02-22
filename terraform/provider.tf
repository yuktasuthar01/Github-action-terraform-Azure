provider "azurerm" {
  features {}  # Optional: Enable specific provider features, if needed
  
  # Specify authentication details
  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
}
