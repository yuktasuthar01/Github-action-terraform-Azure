module "rg" {
  source = "./modules/rg"

  resource_group_name = "terraform"
  location            = "EastUS"

}
