module "augendre_info_test" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "test"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_srv_1_tailscale_v4
  ipv6      = local.domain_target_srv_1_tailscale_v6
}

module "augendre_info_paperless" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "paperless"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_srv_1_tailscale_v4
  ipv6      = local.domain_target_srv_1_tailscale_v6
}

module "augendre_info_reader" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "reader"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_srv_1_tailscale_v4
  ipv6      = local.domain_target_srv_1_tailscale_v6
}

module "augendre_info_wallabag" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "wallabag"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_srv_1_tailscale_v4
  ipv6      = local.domain_target_srv_1_tailscale_v6
}

module "augendre_info_wildcard_srv_1" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "*.srv-1"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_srv_1_tailscale_v4
  ipv6      = local.domain_target_srv_1_tailscale_v6
}
