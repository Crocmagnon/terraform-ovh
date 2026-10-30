data "ovh_domain_zone" "gabnotes_fr" {
  name = "gabnotes.fr"
}

resource "ovh_domain_zone_record" "gabnotes_fr_spf" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 -all"
}

resource "ovh_domain_zone_record" "gabnotes_fr_ns1" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns111.ovh.net."
}
resource "ovh_domain_zone_record" "gabnotes_fr_ns2" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns111.ovh.net."
}

# ----------------------------------------------------------------------
# CAA
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "gabnotes_fr_caa_letsencrypt" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"letsencrypt.org\""
}
resource "ovh_domain_zone_record" "gabnotes_fr_caa_google" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"pki.goog\""
}
resource "ovh_domain_zone_record" "gabnotes_fr_caa_nowildcard" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issuewild \";\""
}

# ----------------------------------------------------------------------
# Web services
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "gabnotes_fr_apex" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = "216.24.57.1" # pika.page
}

resource "ovh_domain_zone_record" "gabnotes_fr_www" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = "www"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "pika.page."
}
