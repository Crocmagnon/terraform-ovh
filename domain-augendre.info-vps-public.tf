resource "ovh_domain_zone_record" "augendre_info_cv" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cv-gabriel"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_static" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "static"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_git" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "git"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_qrcode" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "qrcode"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_mail" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mail"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_mariage" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mariage"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}
