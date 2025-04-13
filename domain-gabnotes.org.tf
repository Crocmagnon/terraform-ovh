data "ovh_domain_zone" "gabnotes_org" {
  name = "gabnotes.org"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328883" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = 0
  target    = "ns111.ovh.net."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328884" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = 0
  target    = "dns111.ovh.net."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328885" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = 0
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328886" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = 0
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328887" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "A"
  ttl       = 0
  target    = "82.65.167.55"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328888" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = 0
  target    = "\"google-site-verification=_srmxXEmPxzvRHJCsw2pmoX7q2l8WMFIFZc8qgOuVIo\""
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328889" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = 0
  target    = "\"hosted-email-verify=bdmii6z6\""
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328890" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = 0
  target    = "v=spf1 include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328891" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = 0
  target    = "0 issue \"letsencrypt.org\""
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328892" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = 0
  target    = "0 issue \"zerossl.com\""
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328893" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = 0
  target    = "v=DMARC1;p=reject;pct=100;rua=mailto:bzphlmdj@ag.eu.dmarcian.com;sp=reject;aspf=s;"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328894" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = 0
  target    = "ae7075db8b68ad8d9a16faa3ead22a"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328895" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "email.mg"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "eu.mailgun.org."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328896" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "gc"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328898" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "key1._domainkey"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "key1.gabnotes.org._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328899" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "key2._domainkey"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "key2.gabnotes.org._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328900" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "key3._domainkey"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "key3.gabnotes.org._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328901" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "mailo._domainkey.mg"
  fieldtype = "DKIM"
  ttl       = 0
  target    = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC0SmBPjjOP6IY+dQHec5kosIfN3kuvBjrCOKv62jA2TIQBXQAuln8/Xd+9Y3sz3RZOQPIhVxUiY2IMsQs+9NE1qbTBDc2k1To+Z/MOzsWQQndqet3QvoasD5zHNkM84ids5jeWB6qaNw58TFr4FbyzQdaNxA3u3O/iYWVT1yHCTwIDAQAB"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328902" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = 0
  target    = "10 mxa.eu.mailgun.org."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328903" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = 0
  target    = "10 mxb.eu.mailgun.org."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328904" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "mg"
  fieldtype = "SPF"
  ttl       = 0
  target    = "v=spf1 include:eu.mailgun.org -all"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328905" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "www"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx.augendre.info."
}
