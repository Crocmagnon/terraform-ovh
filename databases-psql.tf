data "ovh_hosting_privatedatabase" "psql" {
  service_name = "ag56382-001"
}

resource "ovh_hosting_privatedatabase_whitelist" "psql_home" {
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
  ip           = local.ip_cidr_home
  name         = "home"
  service      = true
  sftp         = false
}

resource "ovh_hosting_privatedatabase_whitelist" "psql_srv_1" {
  for_each     = local.ip_srv_1_v4
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
  ip           = each.key
  name         = "srv-1"
  service      = true
  sftp         = false
}

variable "psql_miniflux_password" {
  description = "miniflux password"
  type        = string
  sensitive   = true
}

module "db_miniflux" {
  source = "./modules/db"

  db_name      = "miniflux"
  db_password  = var.psql_miniflux_password
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
}

variable "psql_manuels_password" {
  description = "manuels password"
  type        = string
  sensitive   = true
}

module "db_manuels" {
  source = "./modules/db"

  db_name      = "manuels"
  db_password  = var.psql_manuels_password
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
}

variable "psql_paperless_password" {
  description = "paperless password"
  type        = string
  sensitive   = true
}

module "db_paperless" {
  source = "./modules/db"

  db_name      = "paperless"
  db_password  = var.psql_paperless_password
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
}

variable "psql_wallabag_password" {
  description = "wallabag password"
  type        = string
  sensitive   = true
}

module "db_wallabag" {
  source = "./modules/db"

  db_name      = "wallabag"
  db_password  = var.psql_wallabag_password
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
}

variable "psql_odoo_password" {
  description = "odoo password"
  type        = string
  sensitive   = true
}

module "db_odoo" {
  source = "./modules/db"

  db_name      = "odoo"
  db_password  = var.psql_odoo_password
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
}
