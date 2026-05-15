variable "location" {
  type        = string
  default     = "westeurope"
  description = "Región donde se desplegarán los recursos"
}

variable "environment" {
  type        = string
  default     = "pre"
  description = "Nombre del entorno"
}
