variable "service_name" {
  description = "db service name"
  type        = string
}

variable "db_name" {
  description = "db name"
  type        = string
}

variable "db_username" {
  description = "db username, defaults to db_name"
  type        = string
  default     = ""
}

variable "db_password" {
  description = "db password"
  type        = string
  sensitive   = true
}

locals {
  db_username = var.db_username == "" ? var.db_name : var.db_username
}

resource "ovh_hosting_privatedatabase_database" "this" {
  service_name  = var.service_name
  database_name = var.db_name
}

resource "ovh_hosting_privatedatabase_user" "this" {
  service_name = var.service_name
  user_name    = local.db_username
  password     = var.db_password
}

resource "ovh_hosting_privatedatabase_user_grant" "this" {
  service_name  = var.service_name
  user_name     = ovh_hosting_privatedatabase_user.this.user_name
  database_name = ovh_hosting_privatedatabase_database.this.database_name
  grant         = "admin"
}

output "db_name" {
  description = "database name as returned by ovh"
  value       = ovh_hosting_privatedatabase_database.this.database_name
}