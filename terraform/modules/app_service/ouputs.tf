output "app_url" {
  value       = try(azurerm_linux_web_app.app.default_hostname, null)
  description = "Hostname público del App Service"
}

output "app_id" {
  value       = try(azurerm_linux_web_app.app.id, null)
  description = "ID del App Service"
}

output "plan_id" {
  value       = try(azurerm_service_plan.plan.id, null)
  description = "ID del Service Plan"
}
