//--------------------------------------------------------------------
// Modules
module "network" {
  source  = "app.terraform.io/OtherTG/network/azurerm"
  version = "3.5.0"

  resource_group_name = "gaurav"
}