# ----------------------------------------------------------------------
# Domain verification
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823162" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "hosted-email-verify=klobw3ff"
}
resource "ovh_domain_zone_record" "coccomagnard_fr_5274823170" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "c99083508123d786b91ea993208a6b"
}
resource "ovh_domain_zone_record" "coccomagnard_fr_google_verif" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "google-site-verification=jVl7ahM10RxT1oWKr4x2ne1zZMy8O35OdT-XeEqIdnM"
}
