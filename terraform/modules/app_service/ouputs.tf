output "app_url" {
  value = try(azurerm_linux_web_app.app.default_hostname, null)
}

output "app_id" {
  value = try(azurerm_linux_web_app.app.id, null)
}

output "plan_id" {
  value = try(azurerm_service_plan.plan.id, null)
}
