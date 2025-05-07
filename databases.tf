data "ovh_hosting_privatedatabase" "psql" {
  service_name = "ag56382-001"
}

resource "ovh_hosting_privatedatabase_whitelist" "psql_home" {
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
  ip           = local.allowed_source
  name         = "home"
  service      = true
  sftp         = false
}

resource "ovh_hosting_privatedatabase_whitelist" "psql_vps_1" {
  for_each     = { for k, v in data.ovh_vps.vps_1.ips : k => v if strcontains(k, ".")} # cheap ipv4 vs ipv6 filter
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
  ip           = each.key
  name         = "vps-1"
  service      = true
  sftp         = false
}

/*
resource "ovh_hosting_privatedatabase_whitelist" "psql_vpn_eu_1" {
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
  ip           = "109.190.254.0/26"
  name         = "corp EU proxies"
  service      = true
  sftp         = false
}

resource "ovh_hosting_privatedatabase_whitelist" "psql_vpn_eu_2" {
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
  ip           = "109.190.255.0/25"
  name         = "corp EU proxies"
  service      = true
  sftp         = false
}
*/

variable "psql_miniflux_password" {
  description = "miniflux password"
  type        = string
  sensitive   = true
}

resource "ovh_hosting_privatedatabase_database" "miniflux" {
  service_name  = data.ovh_hosting_privatedatabase.psql.service_name
  database_name = "miniflux"
}

resource "ovh_hosting_privatedatabase_user" "miniflux" {
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
  user_name    = "miniflux"
  password     = var.psql_miniflux_password
}

resource "ovh_hosting_privatedatabase_user_grant" "miniflux_grant" {
  service_name  = data.ovh_hosting_privatedatabase.psql.service_name
  user_name     = ovh_hosting_privatedatabase_user.miniflux.user_name
  database_name = ovh_hosting_privatedatabase_database.miniflux.database_name
  grant         = "admin"
}

variable "psql_manuels_password" {
  description = "manuels password"
  type        = string
  sensitive   = true
}

resource "ovh_hosting_privatedatabase_database" "manuels" {
  service_name  = data.ovh_hosting_privatedatabase.psql.service_name
  database_name = "manuels"
}

resource "ovh_hosting_privatedatabase_user" "manuels" {
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
  user_name    = "manuels"
  password     = var.psql_manuels_password
}

resource "ovh_hosting_privatedatabase_user_grant" "manuels_grant" {
  service_name  = data.ovh_hosting_privatedatabase.psql.service_name
  user_name     = ovh_hosting_privatedatabase_user.manuels.user_name
  database_name = ovh_hosting_privatedatabase_database.manuels.database_name
  grant         = "admin"
}

variable "psql_paperless_password" {
  description = "paperless password"
  type        = string
  sensitive   = true
}

resource "ovh_hosting_privatedatabase_database" "paperless" {
  service_name  = data.ovh_hosting_privatedatabase.psql.service_name
  database_name = "paperless"
}

resource "ovh_hosting_privatedatabase_user" "paperless" {
  service_name = data.ovh_hosting_privatedatabase.psql.service_name
  user_name    = "paperless"
  password     = var.psql_paperless_password
}

resource "ovh_hosting_privatedatabase_user_grant" "paperless_grant" {
  service_name  = data.ovh_hosting_privatedatabase.psql.service_name
  user_name     = ovh_hosting_privatedatabase_user.paperless.user_name
  database_name = ovh_hosting_privatedatabase_database.paperless.database_name
  grant         = "admin"
}
