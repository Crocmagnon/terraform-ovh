resource "ovh_domain_zone_record" "augendre_info_5274823380" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823381" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823385" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:mx.ovh.com include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "augendre_info_5274823387" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "*"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823388" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "*"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823390" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_autodiscover._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "1 1 443 autodiscover.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823393" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_imaps._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "1 1 993 imap.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823394" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_pop3s._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "1 1 995 pop.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823395" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_submissions._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "1 1 465 smtp.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823421" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "key1._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key1.augendre.info._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823422" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "key2._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key2.augendre.info._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823423" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "key3._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key3.augendre.info._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823391" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = local.domain_ttl
  target    = "v=DMARC1;p=reject;pct=100;rua=mailto:bzphlmdj@ag.eu.dmarcian.com;sp=reject;aspf=s;"
}