output "pre_app_url" {
  value       = try(module.app_service_pre[0].app_url, null)
  description = "URL del App Service PRE"
}

output "pro_app_url" {
  value       = try(module.app_service_pro[0].app_url, null)
  description = "URL del App Service PRO"
}
