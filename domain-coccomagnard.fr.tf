data "ovh_domain_zone" "coccomagnard_fr" {
  name = "coccomagnard.fr"
}

# ----------------------------------------------------------------------
# NS
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823156" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns113.ovh.net."
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823157" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns113.ovh.net."
}


# ----------------------------------------------------------------------
# Subdomains
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "coccomagnard_fr_voyages" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "voyages"
  fieldtype = "CNAME"
  ttl       = 60
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

