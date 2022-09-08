variable "region_id" {
  default = "sa-east-1"
}

variable "prefix" {
  default = "igti-felipe-rais"
}

variable "account" {
  default = 862040561963
}

# Prefix configuration and project common tags
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Project      = "RAIS"
    Provider     = "IGTI",
    Billing      = "Infrastructure"
    Environment  = terraform.workspace
    UserEmail    = "felipeapellegrini@gmail.com"
  }
}

variable "bucket_names" {
  description = "Create S3 buckets with these names"
  type        = list(string)
  default = [
    "landing-zone",
    "processing-zone",
    "delivery-zone"
  ]
}

variable "database_names" {
  description = "Create databases with these names"
  type        = list(string)
  default = [
    #landing-zone
    "dl_landing_zone",
    "dl_processing_zone",
    "dl_delivery_zone"
  ]
}
