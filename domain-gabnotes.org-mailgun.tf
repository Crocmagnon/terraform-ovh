resource "ovh_domain_zone_record" "gabnotes_org_5295328895" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "email.mg"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "eu.mailgun.org."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328901" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "mailo._domainkey.mg"
  fieldtype = "DKIM"
  ttl       = local.domain_ttl
  target    = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC0SmBPjjOP6IY+dQHec5kosIfN3kuvBjrCOKv62jA2TIQBXQAuln8/Xd+9Y3sz3RZOQPIhVxUiY2IMsQs+9NE1qbTBDc2k1To+Z/MOzsWQQndqet3QvoasD5zHNkM84ids5jeWB6qaNw58TFr4FbyzQdaNxA3u3O/iYWVT1yHCTwIDAQAB"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328902" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 mxa.eu.mailgun.org."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328903" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 mxb.eu.mailgun.org."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328904" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "mg"
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:eu.mailgun.org -all"
}
