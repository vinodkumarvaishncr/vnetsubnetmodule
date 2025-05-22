terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "vinod-rg-main"
    storage_account_name = "vinodstoragemain"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfsatemanual"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "manual.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
     
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id =  "f81223ca-261f-47c2-87fe-dfb61bae0055"
  features {}
}