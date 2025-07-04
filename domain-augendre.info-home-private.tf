resource "ovh_domain_zone_record" "augendre_info_5274823433" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "plex"
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823434" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "prowlarr"
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823436" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "radarr"
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823439" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "sonarr"
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823444" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "transmission"
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5281160975" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "portainer"
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5325568092" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "prusalink"
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_home_tailscale
}

module "augendre_info_hass" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "hass"
  ttl       = local.domain_short_ttl
  ipv4      = "192.168.0.9"
  ipv6      = "2a01:e0a:325:a1c0:a510:a88a:2977:5433"
}

resource "ovh_domain_zone_record" "augendre_info_vps_control" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "vps-control"
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_home_tailscale
}
