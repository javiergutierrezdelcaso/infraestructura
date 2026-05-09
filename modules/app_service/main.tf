############################################
# SERVICE PLAN
############################################

resource "azurerm_service_plan" "plan" {
  name                = "asp-${var.app_name}"
  location            = var.location
  resource_group_name = var.resource_group
  os_type             = "Linux"
  sku_name            = var.sku_name
}

############################################
# LINUX WEB APP (Pode + PowerShell 7.2)
############################################

resource "azurerm_linux_web_app" "app" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    linux_fx_version = "powershell|7.2"
  }

  app_settings = {
    "APP_ENV"                             = var.app_env
    "WEBSITES_PORT"                       = "8080"
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "true"
    "STARTUP_COMMAND"                     = "/home/site/wwwroot/startup.sh"
  }
}
