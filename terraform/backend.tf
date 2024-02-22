terraform {
  backend "azurerm" {
    storage_account_name = "terraformyukta"
    container_name       = "tfstatefile"
    key                  = "terraform.tfstate"
  }
}
