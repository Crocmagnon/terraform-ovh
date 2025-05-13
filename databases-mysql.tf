data "ovh_hosting_privatedatabase" "mysql" {
  service_name = "ag56382-002"
}

resource "ovh_hosting_privatedatabase_whitelist" "mysql_home" {
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
  ip           = local.home_ip_cidr
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

variable "mysql_gabnotes_org_password" {
  description = "ghost gabnotes.org password"
  type        = string
  sensitive   = true
}

module "db_gabnotes_org" {
  source = "./modules/db"

  db_name      = "gabnotes_org"
  db_password  = var.mysql_gabnotes_org_password
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
}

variable "mysql_voyages_coccomagnard_fr_password" {
  description = "ghost voyages.coccomagnard.fr password"
  type        = string
  sensitive   = true
}

module "db_voyages_coccomagnard_fr" {
  source = "./modules/db"

  db_name      = "voyages_coccomagnard_fr"
  db_username  = "voyages_coccomag"
  db_password  = var.mysql_voyages_coccomagnard_fr_password
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
}

variable "mysql_voyages_lois_augendre_info_password" {
  description = "ghost voyages.lois.augendre.info password"
  type        = string
  sensitive   = true
}

module "db_voyages_lois_augendre_info" {
  source = "./modules/db"

  db_name      = "voyages_lois_augendre_info"
  db_username  = "voyages_lois"
  db_password  = var.mysql_voyages_lois_augendre_info_password
  service_name = data.ovh_hosting_privatedatabase.mysql.service_name
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
  database_name = module.db_gabnotes_org.db_name
  grant         = "ro"
}

resource "ovh_hosting_privatedatabase_user_grant" "backup_grant_voyages_coccomagnard" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name     = ovh_hosting_privatedatabase_user.mysql_backup.user_name
  database_name = module.db_voyages_coccomagnard_fr.db_name
  grant         = "ro"
}

resource "ovh_hosting_privatedatabase_user_grant" "backup_grant_voyages_lois" {
  service_name  = data.ovh_hosting_privatedatabase.mysql.service_name
  user_name     = ovh_hosting_privatedatabase_user.mysql_backup.user_name
  database_name = module.db_voyages_lois_augendre_info.db_name
  grant         = "ro"
}

