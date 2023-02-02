//--------------------------------------------------------------------
// Workspace Data
data "terraform_remote_state" "other_tg_hashicat_azure" {
  backend = "atlas"
  config {
    address = "app.terraform.io"
    name    = "OtherTG/hashicat-azure"
  }
}

//--------------------------------------------------------------------
// Modules
module "network" {
  source  = "app.terraform.io/OtherTG/network/azurerm"
  version = "3.5.0"

  address_space = "data.terraform_remote_state.other_tg_hashicat_azure.catapp_ip"
  address_spaces = "data.terraform_remote_state.other_tg_hashicat_azure.catapp_ip"
  dns_servers = "data.terraform_remote_state.other_tg_hashicat_azure.catapp_ip"
  resource_group_name = "gaurav"
  subnet_enforce_private_link_endpoint_network_policies = "data.terraform_remote_state.other_tg_hashicat_azure.catapp_ip"
  subnet_names = "data.terraform_remote_state.other_tg_hashicat_azure.catapp_ip"
  subnet_prefixes = "data.terraform_remote_state.other_tg_hashicat_azure.catapp_ip"
  subnet_service_endpoints = "data.terraform_remote_state.other_tg_hashicat_azure.catapp_ip"
  tags = "data.terraform_remote_state.other_tg_hashicat_azure.catapp_ip"
  vnet_name = "data.terraform_remote_state.other_tg_hashicat_azure.catapp_ip"
}