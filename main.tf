provider "azurerm" {
  version = "~>2.0"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "{$var.resource_prefix}-RG"
  location = var.location
}

resource "azurerm_app_service_plan" "asp" {
  name = "{$var.resource_prefix}-ASP"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = var.asp_tier
    size = var.asp_size
  }
}

resource "azurerm_app_service" "webapp" {
  name = "{$var.resource_prefix}-WebApp"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  app_settings = {
    WEBSITE_NODE_DEFAULT_VERSION = "10.15.2"
    ApiUrl = ""
    ApiUrlShoppingCart = ""
    MongoConnectionString = ""
    SqlConnectionString = ""
    productImagesUrl = "https://raw.githubusercontent.com/microsoft/TailwindTraders-Backend/master/Deploy/tailwindtraders-images/product-detail"
    Personalizer_ApiKey = ""
    Personalizer_Endpoint = ""
}

  }