locals {
  ip_home      = "82.65.167.55"
  ip_cidr_home = "${local.ip_home}/32"
  ip_vps_1_v4  = toset([for k, v in data.ovh_vps.vps_1.ips : k if strcontains(k, ".")])
  ip_vps_1_v6  = toset([for k, v in data.ovh_vps.vps_1.ips : k if strcontains(k, ":")])
}