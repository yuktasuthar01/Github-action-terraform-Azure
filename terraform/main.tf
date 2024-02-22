terraform {
  backend "azurerm" {
    resource_group_name = "Terraform-Test"
    storage_account_name = "terraformyukta"
    container_name = "tfstatefile"
    key = "dev.terraform.tfstate"
  }
}
module "rg" {
  source = "./modules/rg"

  resource_group_name = "terraform"
  location            = "EastUS"

}