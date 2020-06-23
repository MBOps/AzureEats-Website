provider "azurerm" {
  version = "~>2.0"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "${var.resource_prefix}-RG"
  location = var.location
}

resource "azurerm_app_service_plan" "asp" {
  name = "${var.resource_prefix}-ASP"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = var.asp_tier
    size = var.asp_size
  }
}

resource "azurerm_app_service" "webapp" {
  name = "${var.resource_prefix}-WebApp"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  app_settings = var.app_settings

  }