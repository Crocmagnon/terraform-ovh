data "ovh_domain_zone" "gabnotes_org" {
  name = "gabnotes.org"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328883" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns111.ovh.net."
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328884" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns111.ovh.net."
}

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

resource "ovh_domain_zone_record" "gabnotes_org_apex" {
  for_each  = local.ip_vps_1_v4
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "gabnotes_org_apex_v6" {
  for_each  = local.ip_vps_1_v6
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "AAAA"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328888" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "\"google-site-verification=_srmxXEmPxzvRHJCsw2pmoX7q2l8WMFIFZc8qgOuVIo\""
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328889" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "\"hosted-email-verify=bdmii6z6\""
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328890" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328891" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"letsencrypt.org\""
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328892" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"zerossl.com\""
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328893" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = local.domain_ttl
  target    = "v=DMARC1;p=reject;pct=100;rua=mailto:bzphlmdj@ag.eu.dmarcian.com;sp=reject;aspf=s;"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328894" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "ae7075db8b68ad8d9a16faa3ead22a"
}

resource "ovh_domain_zone_record" "gabnotes_org_5295328895" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "email.mg"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "eu.mailgun.org."
}

resource "ovh_domain_zone_record" "gabnotes_org_goatcounter" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "gc"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "gabnotes.goatcounter.com."
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

resource "ovh_domain_zone_record" "gabnotes_org_5295328905" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "www"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "vps-1.augendre.info."
}

resource "ovh_domain_zone_record" "gabnotes_org_pika" {
  zone      = data.ovh_domain_zone.gabnotes_org.name
  subdomain = "pika"
  fieldtype = "CNAME"
  ttl       = 60
  target    = "pika.page."
}
