data "ovh_domain_zone" "augendre_info" {
  name = "augendre.info"
}

# ----------------------------------------------------------------------
# NS
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "augendre_info_ns1" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns109.ovh.net."
}

resource "ovh_domain_zone_record" "augendre_info_ns2" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns109.ovh.net."
}

# ----------------------------------------------------------------------
# CAA
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "augendre_info_caa_letsencrypt" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"letsencrypt.org\""
}
resource "ovh_domain_zone_record" "augendre_info_caa_nowildcard" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issuewild \";\""
}

# ----------------------------------------------------------------------
# Web services
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "augendre_info_apex_v4" {
  for_each  = local.ip_srv_1_v4
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "augendre_info_apex_v6" {
  for_each  = local.ip_srv_1_v6
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "AAAA"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "augendre_info_status" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "status"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "reports.hetrixtools.com."
}

resource "ovh_domain_zone_record" "augendre_info_cercie" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cercie"
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = local.ip_cercie
}

resource "ovh_domain_zone_record" "augendre_info_github_pages" {
  for_each  = toset(["go", "doses", "qr", "potain", "anniv-lois", "mobileconfig"])
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = each.key
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "crocmagnon.github.io."
}

resource "ovh_domain_zone_record" "augendre_info_srv_1_v4" {
  for_each  = local.ip_srv_1_v4
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "srv-1"
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "augendre_info_srv_1_v6" {
  for_each  = local.ip_srv_1_v6
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "srv-1"
  fieldtype = "AAAA"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "augendre_info_voyages_lois" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "voyages-lois"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "pika.page."
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
# Mailgun
# ----------------------------------------------------------------------
module "augendre_info_mailgun" {
  source        = "./modules/mailgun"
  zone          = data.ovh_domain_zone.augendre_info.name
  ttl           = local.domain_ttl
  endpoint      = "us"
  dmarc         = "v=DMARC1; p=quarantine; pct=100; fo=1; ri=3600; rua=mailto:dbbd0f84@dmarc.mailgun.org,mailto:c031cfb4@inbox.ondmarc.com; ruf=mailto:dbbd0f84@dmarc.mailgun.org,mailto:c031cfb4@inbox.ondmarc.com;"
  dkim_selector = "k1"
  dkim          = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuQjT4Q30jOLnhkk3MLh8WNrVGPl2CD4/lK+1q5vvra6TIWgHUbIDPGVCeImnRA+qk5b/IuJnoFFigcAD9rPMTkd4uN1mBN22OuWcI5xQALnJMt0NDNzeukg7kIgbFjgFJCUjhYh4c4EH6xZI733qpUxgIv7KgPGRU5R3uOlXg8wIDAQAB"
}
