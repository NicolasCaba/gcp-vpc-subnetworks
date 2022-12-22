/****************************************************/
# Configuración Google Cloud
/****************************************************/
variable "GOOGLE_PROJECT_ID" {
  type        = string
  description = "GCP project id"
}

variable "GOOGLE_REGION" {
  type        = string
  description = "GCP region por defecto"
}


/****************************************************/
# variables vpc
/****************************************************/
variable "vpc_name" {
  type        = string
  description = "Nombre de la vpc"
}

variable "vpc_auto_create_subnetworks" {
  type        = bool
  description = "Habilitar o no la creación automatica de subredes al momento del despliegue de la vpc"
}

variable "vpc_mtu" {
  type        = number
  description = "Unidad máxima de transferencia"
}


