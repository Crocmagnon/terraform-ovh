data "ovh_domain_zone" "coccomagnard_fr" {
  name = "coccomagnard.fr"
}

# ----------------------------------------------------------------------
# NS
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "coccomagnard_fr_ns1" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns113.ovh.net."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_ns2" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns113.ovh.net."
}


# ----------------------------------------------------------------------
# CAA
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "coccomagnard_fr_caa_letsencrypt" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"letsencrypt.org\""
}
resource "ovh_domain_zone_record" "coccomagnard_fr_caa_google" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"pki.goog\""
}
resource "ovh_domain_zone_record" "coccomagnard_fr_caa_nowildcard" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issuewild \";\""
}

# ----------------------------------------------------------------------
# Subdomains
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "coccomagnard_fr_voyages" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "voyages"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "pika.page."
}


# ----------------------------------------------------------------------
# Migadu
# ----------------------------------------------------------------------
module "coccomagnard_fr_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.coccomagnard_fr.name
  ttl    = local.domain_ttl
}


# ----------------------------------------------------------------------
# Mailgun
# ----------------------------------------------------------------------
module "coccomagnard_fr_mailgun" {
  source        = "./modules/mailgun"
  zone          = data.ovh_domain_zone.coccomagnard_fr.name
  ttl           = local.domain_ttl
  endpoint      = "eu"
  dmarc         = "v=DMARC1; p=quarantine; pct=100; fo=1; ri=3600; rua=mailto:dbbd0f84@dmarc.mailgun.org,mailto:c031cfb4@inbox.ondmarc.com; ruf=mailto:dbbd0f84@dmarc.mailgun.org,mailto:c031cfb4@inbox.ondmarc.com;"
  dkim_selector = "email"
  dkim          = "k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA01xwuCIXBoNFKrvRW5MLoF5058MwMe3b+Eve+BF8H3OD4Z9Y51/KRoPhQgV8iNdOYSixdjwFnkqc1Km1cG/BYzz+aqeSkc3py1zRxW9/d81c10Le0ghFY4RJVGck05aznmCbPtgs4u3UYocvwjZ1Q/Gu1QFsWMpmWvtc9E15+j+e0B3zw3NpWfwHuVNlvaZ3uHe6cYIMIvfbzK3uE1BRZiaN+Fs4zAoBmSRDtAmogNkkYQLl01chi3643SnQ6TmRchVN4bqyPXXo3ugKW8Zw6g5Ply2e6qBhia7bQmxgk8Ewobqoa5fRtsTuGy0hmfEoxme8DCql6dDCfz0VAfLi4QIDAQAB"
}

