variable "resource_prefix" {
  type        = string
  description = "Prefix for Resources"
}

variable "location" {
  type        = string
  description = "Location of Resources"
}

variable "asp_tier" {
  type        = string
  description = "Tier of App Service Plan"
}

variable "asp_size" {
  type        = string
  description = "Size of App Service Plan"
}
