# ----------------------------------------------------------------------
# Mailgun
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823175" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "email.mg"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "eu.mailgun.org."
}

## MX
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823180" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 mxa.eu.mailgun.org."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823181" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 mxb.eu.mailgun.org."
}

## SPF
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823182" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "mg"
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:mailgun.org ~all"
}

## DKIM
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823174" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "email._domainkey.mg"
  fieldtype = "DKIM"
  ttl       = local.domain_ttl
  target    = "k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA01xwuCIXBoNFKrvRW5MLoF5058MwMe3b+Eve+BF8H3OD4Z9Y51/KRoPhQgV8iNdOYSixdjwFnkqc1Km1cG/BYzz+aqeSkc3py1zRxW9/d81c10Le0ghFY4RJVGck05aznmCbPtgs4u3UYocvwjZ1Q/Gu1QFsWMpmWvtc9E15+j+e0B3zw3NpWfwHuVNlvaZ3uHe6cYIMIvfbzK3uE1BRZiaN+Fs4zAoBmSRDtAmogNkkYQLl01chi3643SnQ6TmRchVN4bqyPXXo3ugKW8Zw6g5Ply2e6qBhia7bQmxgk8Ewobqoa5fRtsTuGy0hmfEoxme8DCql6dDCfz0VAfLi4QIDAQAB"
}

## DMARC
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823169" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_dmarc.mg"
  fieldtype = "DMARC"
  ttl       = local.domain_ttl
  target    = "v=DMARC1; p=quarantine; pct=100; fo=1"
}
