resource "ovh_domain_zone_record" "augendre_info_5274823398" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "bin"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_5274823432" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "paste"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_5274823400" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "charasheet"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_5274823406" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cv-gabriel"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_5274823412" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "fournitures"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_5274823416" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "git"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_5274823424" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mail"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_5274823425" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "manuels"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_5274823437" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "reader"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_reader_3" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "reader3"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = "vps-3.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5274823440" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "static"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_5274823448" {
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
  target    = local.domain_target_vps_public
}

resource "ovh_domain_zone_record" "augendre_info_simulator" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "simulator"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = local.domain_target_vps_public
}
