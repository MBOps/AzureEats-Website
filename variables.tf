variable "resource_prefix" {
  description = "Prefix for Resources"
  default = "Azure-Eats"
}

variable "location" {
  description = "Location of Resources"
  default = "northeurope"
}

variable "asp_tier" {
  description = "Tier of App Service Plan"
  default = "Basic"
}

variable "asp_size" {
  description = "Size of App Service Plan"
  default = "B1"
}

