resource "ovh_domain_zone_record" "gabnotes_org_5295328885" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328886" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328890" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328893" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = local.domain_ttl
  target    = "v=DMARC1;p=reject;pct=100;rua=mailto:bzphlmdj@ag.eu.dmarcian.com;sp=reject;aspf=s;"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328898" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "key1._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key1.gabnotes.org._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328899" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "key2._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key2.gabnotes.org._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328900" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "key3._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key3.gabnotes.org._domainkey.migadu.com."
}
