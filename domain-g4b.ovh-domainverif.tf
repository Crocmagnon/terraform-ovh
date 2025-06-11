resource "ovh_domain_zone_record" "g4b_ovh_5274823142" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_long_ttl
  target    = "hosted-email-verify=pl8w0tbw"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823145" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = local.domain_long_ttl
  target    = "6e7477e53f167a4e6b126c03d42501"
}

