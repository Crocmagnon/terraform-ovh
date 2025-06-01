data "ovh_domain_zone" "gabnotes_org" {
  name = "gabnotes.org"
}

# ----------------------------------------------------------------------
# NS
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "gabnotes_org_5295328883" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns111.ovh.net."
}
resource "ovh_domain_zone_record" "gabnotes_org_5295328884" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns111.ovh.net."
}

# ----------------------------------------------------------------------
# Web services
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "gabnotes_org_apex" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "A"
  ttl       = 60
  target    = "216.24.57.1" # pika.page
}
resource "ovh_domain_zone_record" "gabnotes_org_www" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "www"
  fieldtype = "CNAME"
  ttl       = 60
  target    = "pika.page."
}
resource "ovh_domain_zone_record" "gabnotes_org_pika" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "pika"
  fieldtype = "CNAME"
  ttl       = 60
  target    = "pika.page."
}
