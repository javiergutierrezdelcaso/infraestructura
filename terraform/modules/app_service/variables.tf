variable "app_name" {
  type        = string
  description = "Nombre del App Service"
}

variable "location" {
  type        = string
  description = "Región de Azure"
}

variable "resource_group" {
  type        = string
  description = "Nombre del Resource Group donde se desplegará el App Service"
}

variable "app_env" {
  type        = string
  description = "Entorno de la aplicación (pre, pro, dev)"
}

variable "sku_name" {
  type        = string
  description = "SKU del App Service Plan"
}
