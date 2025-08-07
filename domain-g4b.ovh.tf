data "ovh_domain_zone" "g4b_ovh" {
  name = "g4b.ovh"
}

# ----------------------------------------------------------------------
# NS
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "g4b_ovh_5274823136" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_long_ttl
  target    = "dns11.ovh.net."
}
resource "ovh_domain_zone_record" "g4b_ovh_5274823137" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_long_ttl
  target    = "ns11.ovh.net."
}

# ----------------------------------------------------------------------
# Web services
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "g4b_ovh_apex_v4" {
  for_each  = local.ip_vps_2_v4
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_long_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "g4b_ovh_apex_v6" {
  for_each  = local.ip_vps_2_v6
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "AAAA"
  ttl       = local.domain_long_ttl
  target    = each.key
}


# ----------------------------------------------------------------------
# Migadu
# ----------------------------------------------------------------------
module "g4b_ovh_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.g4b_ovh.name
  ttl    = local.domain_long_ttl
}
