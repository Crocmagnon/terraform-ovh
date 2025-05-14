data "ovh_domain_zone" "g4b_ovh" {
  name = "g4b.ovh"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823136" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns11.ovh.net."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823137" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns11.ovh.net."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823138" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823139" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_apex_v4" {
  for_each  = local.ip_vps_1_v4
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "g4b_ovh_apex_v6" {
  for_each  = local.ip_vps_1_v6
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "AAAA"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823141" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823142" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "hosted-email-verify=pl8w0tbw"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823143" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_autodiscover._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 443 autodiscover.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823144" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = local.domain_ttl
  target    = "v=DMARC1; p=quarantine;"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823145" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "6e7477e53f167a4e6b126c03d42501"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823146" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_imaps._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 993 imap.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823147" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_pop3s._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 995 pop.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823148" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_submissions._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 465 smtp.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823149" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "autoconfig"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "autoconfig.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823150" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "key1._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key1.g4b.ovh._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823151" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "key2._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key2.g4b.ovh._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823152" {
  zone      = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "key3._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key3.g4b.ovh._domainkey.migadu.com."
}
