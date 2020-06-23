provider "azurerm" {
  version = "~>2.0"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "Azure-Eats-RG"
  location = "northeurope"
}

resource "azurerm_app_service_plan" "asp" {
  name = "Azure-Eats-ASP"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "webapp" {
  name = "Azure-Eats-WebApp"
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