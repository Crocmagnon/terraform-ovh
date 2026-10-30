module "augendre_info_hass" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "hass"
  ttl       = local.domain_ttl
  ipv4      = "192.168.0.9"
  ipv6      = "2a01:e0a:fa3:ce60:172f:e028:a3a1:8589"
}

module "augendre_info_display" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "display"
  ttl       = local.domain_ttl
  ipv4      = "192.168.0.8"
  ipv6      = "2a01:e0a:fa3:ce60:ba27:ebff:fe95:8dd7"
}

