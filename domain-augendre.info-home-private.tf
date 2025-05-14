resource "ovh_domain_zone_record" "augendre_info_5274823433" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "plex"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823434" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "prowlarr"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823436" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "radarr"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823439" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "sonarr"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823444" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "transmission"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5281160975" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "portainer"
  fieldtype = "CNAME"
  ttl       = 60
  target    = local.domain_target_home_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5325568092" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "prusalink"
  fieldtype = "CNAME"
  ttl       = 60
  target    = local.domain_target_home_tailscale
}