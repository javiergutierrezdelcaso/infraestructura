provider "azurerm" {
  features {}
}

module "app_service" {
  source = "../../modules/app_service"

  environment = var.environment
  location    = var.location
}
