module "rg" {
  source = "./modules/rg"

  resource_group_name = "terraform"
  location            = "EastUS"

}

module "vnet" {
  source               = "./modules/vnet"
  location             = module.rg.location
  resource_group_name  = module.rg.name
  virtual_network_name = "vnet"
  address_space        = ["10.0.0.0/16"]
  dns_servers          = ["8.8.8.8", "8.8.4.4"]
  subnets              = []

  tags = {
    environment = "dev"
    project     = "my_project"
  }
}
