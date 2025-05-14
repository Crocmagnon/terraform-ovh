resource "ovh_domain_zone_record" "augendre_info_5274823418" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "hass"
  fieldtype = "CNAME"
  ttl       = 60
  target    = local.domain_target_home_public
}
