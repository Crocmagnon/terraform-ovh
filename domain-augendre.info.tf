data "ovh_domain_zone" "augendre_info" {
  name = "augendre.info"
}

# ----------------------------------------------------------------------
# NS
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "augendre_info_5274823378" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns109.ovh.net."
}

resource "ovh_domain_zone_record" "augendre_info_5274823379" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns109.ovh.net."
}

# ----------------------------------------------------------------------
# CAA
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "augendre_info_5274823383" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"letsencrypt.org\""
}
resource "ovh_domain_zone_record" "augendre_info_5274823384" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"zerossl.com\""
}

# ----------------------------------------------------------------------
# Web services
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "augendre_info_apex_v4" {
  for_each  = local.ip_vps_1_v4
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "augendre_info_apex_v6" {
  for_each  = local.ip_vps_1_v6
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "AAAA"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "augendre_info_5274823409" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "doses"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "crocmagnon.github.io."
}

resource "ovh_domain_zone_record" "augendre_info_5274823430" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "nginx"
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = local.ip_home
}

resource "ovh_domain_zone_record" "augendre_info_5274823441" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "status"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "reports.hetrixtools.com."
}

resource "ovh_domain_zone_record" "augendre_info_5293296439" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cercie"
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = local.ip_cercie
}

resource "ovh_domain_zone_record" "augendre_info_5346028581" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "hasscasa"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "qe7jfmivnxuislrlgljlour4eiv0vbe7.ui.nabu.casa."
}

resource "ovh_domain_zone_record" "augendre_info_go_cname" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "go"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "crocmagnon.github.io."
}

resource "ovh_domain_zone_record" "augendre_info_vps_1" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "vps-1"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "${data.ovh_vps.vps_1.service_name}."
}


# ----------------------------------------------------------------------
# Migadu
# ----------------------------------------------------------------------
module "augendre_info_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.augendre_info.name
  ttl    = local.domain_ttl
}


# ----------------------------------------------------------------------
# Migadu
# ----------------------------------------------------------------------
module "augendre_info_mailgun" {
  source        = "./modules/mailgun"
  zone          = data.ovh_domain_zone.augendre_info.name
  ttl           = 60
  endpoint      = "us"
  dmarc         = "v=DMARC1; p=quarantine; pct=100; fo=1; ri=3600; rua=mailto:dbbd0f84@dmarc.mailgun.org,mailto:c031cfb4@inbox.ondmarc.com; ruf=mailto:dbbd0f84@dmarc.mailgun.org,mailto:c031cfb4@inbox.ondmarc.com;"
  dkim_selector = "k1"
  dkim          = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuQjT4Q30jOLnhkk3MLh8WNrVGPl2CD4/lK+1q5vvra6TIWgHUbIDPGVCeImnRA+qk5b/IuJnoFFigcAD9rPMTkd4uN1mBN22OuWcI5xQALnJMt0NDNzeukg7kIgbFjgFJCUjhYh4c4EH6xZI733qpUxgIv7KgPGRU5R3uOlXg8wIDAQAB"
}
