# ----------------------------------------------------------------------
# Migadu
# ----------------------------------------------------------------------
## MX
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823158" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 aspmx1.migadu.com."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823159" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "20 aspmx2.migadu.com."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823164" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "*"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "20 aspmx2.migadu.com."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823165" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "*"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 aspmx1.migadu.com."
}

## SPF
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823163" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:spf.migadu.com -all"
}

## DKIM
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823177" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "key1._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key1.coccomagnard.fr._domainkey.migadu.com."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823178" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "key2._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key2.coccomagnard.fr._domainkey.migadu.com."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823179" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "key3._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key3.coccomagnard.fr._domainkey.migadu.com."
}


## DMARC
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823168" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = local.domain_ttl
  target    = "v=DMARC1; p=reject;"
}

## Autoconfigure
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823167" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_autodiscover._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 443 autodiscover.migadu.com."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823171" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_imaps._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 993 imap.migadu.com."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823172" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_submissions._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 465 smtp.migadu.com."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823173" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "autoconfig"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "autoconfig.migadu.com."
}
