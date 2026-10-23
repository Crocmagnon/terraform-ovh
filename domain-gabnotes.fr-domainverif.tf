resource "ovh_domain_zone_record" "gabnotes_fr_google_site_verification" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "\"google-site-verification=hYpoaZYUdAx3wkIo6NDAFdb-nrIGIB0BRzIfpEOPFpg\""
}
