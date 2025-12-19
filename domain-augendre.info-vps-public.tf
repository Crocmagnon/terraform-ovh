resource "ovh_domain_zone_record" "augendre_info_cv" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cv-gabriel"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_3_public
}

resource "ovh_domain_zone_record" "augendre_info_static" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "static"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_3_public
}

resource "ovh_domain_zone_record" "augendre_info_git" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "git"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_3_public
}

resource "ovh_domain_zone_record" "augendre_info_mail" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mail"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_3_public
}

resource "ovh_domain_zone_record" "augendre_info_reader" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "reader"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_3_public
}

resource "ovh_domain_zone_record" "augendre_info_wallabag" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "wallabag"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_mariage" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mariage"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_3_public
}

resource "ovh_domain_zone_record" "augendre_info_simulator" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "simulator"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}
