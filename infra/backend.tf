terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "sttfstatequeimadas561541"
    container_name       = "tfstate561541"
    use_azuread_auth     = true
    use_cli              = true
    key                  = "monitor-queimadas.tfstate"
  }
}


provider "azurerm" {
  features {}
}
