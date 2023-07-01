variable "rgname" {
  type        = string
  description = "used for naming resource group"
  default     = "demorg"
}

variable "location" {
  type        = string
  description = "used for selecting location"
  default     = "eastus"
}

variable "prefix" {
  type        = string
  description = "The prefix used for all resources in this example"
    default     = "demojune"
}

variable "ARM_CLIENT_ID" {
  type        = string
}
variable "ARM_CLIENT_SECRET" {
  type        = string
}
variable "ARM_SUBSCRIPTION_ID" {
  type        = string
}
variable "ARM_TENANT_ID" {
  type        = string
}