terraform {
  backend "azurerm" {
    resource_group_name  = "GitHubActions"
    storage_account_name = "githubactionsmbops"
    container_name       = "tfstate"
    key                  = "challenge-1.terraform.tfstate"
  }
}

provider "azurerm" {
    version = "~>2.0"
    features {}
}

resource "azurerm_resource_group" "rg" {
    name = "Azure-Eats-RG"
    location = "northeurope"
}
