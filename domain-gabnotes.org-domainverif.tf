resource "ovh_domain_zone_record" "gabnotes_org_5295328888" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "google-site-verification=_srmxXEmPxzvRHJCsw2pmoX7q2l8WMFIFZc8qgOuVIo"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328889" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "hosted-email-verify=bdmii6z6"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328894" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "ae7075db8b68ad8d9a16faa3ead22a"
}
