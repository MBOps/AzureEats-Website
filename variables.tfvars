resource_prefix = "Azure-Eats"
location = "northeurope"
asp_tier = "Basic"
asp_size = "B1"
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