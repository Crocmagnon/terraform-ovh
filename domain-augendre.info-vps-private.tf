module "augendre_info_test" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "test"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_3_tailscale_v4
  ipv6      = local.domain_target_vps_3_tailscale_v6
}

module "augendre_info_paperless" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "paperless"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}

module "augendre_info_paperless3" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "paperless3"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_3_tailscale_v4
  ipv6      = local.domain_target_vps_3_tailscale_v6
}
