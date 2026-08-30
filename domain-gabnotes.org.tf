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
  ttl       = local.domain_long_ttl
  target    = "ns111.ovh.net."
}
resource "ovh_domain_zone_record" "gabnotes_org_5295328884" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_long_ttl
  target    = "dns111.ovh.net."
}

# ----------------------------------------------------------------------
# Web services
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "gabnotes_org_apex" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = "216.24.57.1" # pika.page
}
resource "ovh_domain_zone_record" "gabnotes_org_www" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "www"
  fieldtype = "CNAME"
  ttl       = local.domain_short_ttl
  target    = "pika.page."
}


# ----------------------------------------------------------------------
# Migadu
# ----------------------------------------------------------------------
module "gabnotes_org_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.gabnotes_org.name
  ttl    = local.domain_long_ttl
}


# ----------------------------------------------------------------------
# Mailgun
# ----------------------------------------------------------------------
module "gabnotes_org_mailgun" {
  source        = "./modules/mailgun"
  zone          = data.ovh_domain_zone.gabnotes_org.name
  ttl           = local.domain_short_ttl
  endpoint      = "eu"
  dmarc         = "v=DMARC1; p=quarantine; pct=100; fo=1; ri=3600; rua=mailto:dbbd0f84@dmarc.mailgun.org,mailto:c031cfb4@inbox.ondmarc.com; ruf=mailto:dbbd0f84@dmarc.mailgun.org,mailto:c031cfb4@inbox.ondmarc.com;"
  dkim_selector = "mailo"
  dkim          = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC0SmBPjjOP6IY+dQHec5kosIfN3kuvBjrCOKv62jA2TIQBXQAuln8/Xd+9Y3sz3RZOQPIhVxUiY2IMsQs+9NE1qbTBDc2k1To+Z/MOzsWQQndqet3QvoasD5zHNkM84ids5jeWB6qaNw58TFr4FbyzQdaNxA3u3O/iYWVT1yHCTwIDAQAB"
}
