resource "ovh_domain_zone_record" "augendre_info_migadu_verif" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_long_ttl
  target    = "\"hosted-email-verify=xehxnesp\""
}
resource "ovh_domain_zone_record" "augendre_info_github_pages_verif" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = local.domain_long_ttl
  target    = "\"922dad7e6712db1c8682ebc00fa7f5\""
}
resource "ovh_domain_zone_record" "augendre_info_google_verif" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_long_ttl
  target    = "\"google-site-verification=x2oRItA0r6paeQM1fW9yYu63Dm0AzoMSUCP5CtS-WhY\""
}
resource "ovh_domain_zone_record" "augendre_info_hasscasa_acme" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_acme-challenge.hasscasa"
  fieldtype = "CNAME"
  ttl       = local.domain_long_ttl
  target    = "_acme-challenge.qe7jfmivnxuislrlgljlour4eiv0vbe7.ui.nabu.casa."
}
