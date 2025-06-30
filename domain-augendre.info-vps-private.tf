resource "ovh_domain_zone_record" "augendre_info_5274823404" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "code"
  fieldtype = "CNAME"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_vps_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823443" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "test"
  fieldtype = "CNAME"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_vps_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_portainer_vps" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "portainer-vps-1"
  fieldtype = "CNAME"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_vps_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5345300513" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "pdf"
  fieldtype = "CNAME"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_vps_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5337967994" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "paperless"
  fieldtype = "CNAME"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_vps_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_5274823442" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "tcl"
  fieldtype = "CNAME"
  ttl       = local.domain_short_ttl
  target    = local.domain_target_vps_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_webdav" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "webdav"
  fieldtype = "CNAME"
  ttl       = 60
  target    = local.domain_target_vps_tailscale
}

resource "ovh_domain_zone_record" "augendre_info_radicale" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "radicale"
  fieldtype = "CNAME"
  ttl       = 60
  target    = local.domain_target_vps_tailscale
}
