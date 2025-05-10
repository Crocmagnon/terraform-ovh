data "ovh_hosting_privatedatabase" "mysql" {
  service_name = "ag56382-002"
}

resource "ovh_hosting_privatedatabase_whitelist" "mysql_home" {
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
  ip           = local.allowed_source
  name         = "home"
  service      = true
  sftp         = false
}

resource "ovh_hosting_privatedatabase_whitelist" "mysql_vps_1" {
  for_each     = { for k, v in data.ovh_vps.vps_1.ips : k => v if strcontains(k, ".") } # cheap ipv4 vs ipv6 filter
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
  ip           = each.key
  name         = "vps-1"
  service      = true
  sftp         = false
}

/*
resource "ovh_hosting_privatedatabase_whitelist" "mysql_vpn_eu_1" {
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
  ip           = "109.190.254.0/26"
  name         = "corp EU proxies"
  service      = true
  sftp         = false
}

resource "ovh_hosting_privatedatabase_whitelist" "mysql_vpn_eu_2" {
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
  ip           = "109.190.255.0/25"
  name         = "corp EU proxies"
  service      = true
  sftp         = false
}
*/

variable "mysql_ghost_gabnotes_password" {
  description = "ghost gabnotes.org password"
  type        = string
  sensitive   = true
}

resource "ovh_hosting_privatedatabase_database" "gabnotes_org" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  database_name = "gabnotes_org"
}

resource "ovh_hosting_privatedatabase_user" "gabnotes_org" {
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name    = "gabnotes_org"
  password     = var.mysql_ghost_gabnotes_password
}

resource "ovh_hosting_privatedatabase_user_grant" "gabnotes_org_grant" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name     = ovh_hosting_privatedatabase_user.gabnotes_org.user_name
  database_name = ovh_hosting_privatedatabase_database.gabnotes_org.database_name
  grant         = "admin"
}

variable "mysql_ghost_voyages_coccomagnard_password" {
  description = "ghost voyages.coccomagnard.fr password"
  type        = string
  sensitive   = true
}

resource "ovh_hosting_privatedatabase_database" "voyages_coccomagnard_fr" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  database_name = "voyages_coccomagnard_fr"
}

resource "ovh_hosting_privatedatabase_user" "voyages_coccomagnard_fr" {
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name    = "voyages_coccomag"
  password     = var.mysql_ghost_voyages_coccomagnard_password
}

resource "ovh_hosting_privatedatabase_user_grant" "voyages_coccomagnard_fr_grant" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name     = ovh_hosting_privatedatabase_user.voyages_coccomagnard_fr.user_name
  database_name = ovh_hosting_privatedatabase_database.voyages_coccomagnard_fr.database_name
  grant         = "admin"
}

variable "mysql_ghost_voyages_lois_password" {
  description = "ghost voyages.lois.augendre.info password"
  type        = string
  sensitive   = true
}

resource "ovh_hosting_privatedatabase_database" "voyages_lois_augendre_info" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  database_name = "voyages_lois_augendre_info"
}

resource "ovh_hosting_privatedatabase_user" "voyages_lois_augendre_info" {
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name    = "voyages_lois"
  password     = var.mysql_ghost_voyages_lois_password
}

resource "ovh_hosting_privatedatabase_user_grant" "voyages_lois_augendre_info_grant" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name     = ovh_hosting_privatedatabase_user.voyages_lois_augendre_info.user_name
  database_name = ovh_hosting_privatedatabase_database.voyages_lois_augendre_info.database_name
  grant         = "admin"
}

variable "mysql_backup_password" {
  description = "backup user password"
  type        = string
  sensitive   = true
}

resource "ovh_hosting_privatedatabase_user" "mysql_backup" {
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name    = "backup"
  password     = var.mysql_backup_password
}

resource "ovh_hosting_privatedatabase_user_grant" "backup_grant_gabnotes" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name     = ovh_hosting_privatedatabase_user.mysql_backup.user_name
  database_name = ovh_hosting_privatedatabase_database.gabnotes_org.database_name
  grant         = "ro"
}

resource "ovh_hosting_privatedatabase_user_grant" "backup_grant_voyages_coccomagnard" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name     = ovh_hosting_privatedatabase_user.mysql_backup.user_name
  database_name = ovh_hosting_privatedatabase_database.voyages_coccomagnard_fr.database_name
  grant         = "ro"
}

resource "ovh_hosting_privatedatabase_user_grant" "backup_grant_voyages_lois" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name     = ovh_hosting_privatedatabase_user.mysql_backup.user_name
  database_name = ovh_hosting_privatedatabase_database.voyages_lois_augendre_info.database_name
  grant         = "ro"
}

