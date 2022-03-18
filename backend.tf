terraform {
  backend "azurerm" {
    resource_group_name     = "rg-bgzb-tfstate"
    storage_account_name    = "sa4bgzbtfstate"
    container_name          = "bgzbtfstatecont"
    key                     = "tfstate"  
  }
}