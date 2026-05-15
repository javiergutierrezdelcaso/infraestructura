variable "location" {
  type        = string
  default     = "westeurope"
  description = "Región donde se desplegarán los recursos"
}

variable "environment" {
  type        = string
  default     = "pro"
  description = "Nombre del entorno"
}
