terraform {
    cloud {
        organization = "vain"
        workspaces {
          name = "vnet_module_practise"
        }
    }
}

provider "azurerm" {
    features{}
}

module "wasim" {
  source  = "Azure/vnet/azurerm"
  version = "4.0.0"
  # insert the 3 required variables here
  resource_group_name = "wasim-resource"
  use_for_each = true
  vnet_location = var.vnet_location
  vnet_name = "module_vnet"
  subnet_names = ["mysubnet1"]
  subnet_prefixes = ["10.0.5.0/24"]
  tags ={
    "cost center" : "89070"
    "Resource owner" : "Wasim akram"
    "created on" : "07/03/2023"
    "created by" : "Wasim Akram"
  }
}