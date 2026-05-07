output "pre_app_url" {
  value       = module.app_service_pre.app_url
  description = "URL del App Service PRE"
}

output "pro_app_url" {
  value       = module.app_service_pro.app_url
  description = "URL del App Service PRO"
}
