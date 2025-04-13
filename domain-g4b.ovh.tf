data "ovh_domain_zone" "g4b_ovh" {
  name = "g4b.ovh"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823136" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "NS"
  ttl = 0
  target = "dns11.ovh.net."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823137" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "NS"
  ttl = 0
  target = "ns11.ovh.net."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823138" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "MX"
  ttl = 0
  target = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823139" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "MX"
  ttl = 0
  target = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823140" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "A"
  ttl = 0
  target = "82.65.167.55"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823141" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "SPF"
  ttl = 0
  target = "v=spf1 include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823142" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = ""
  fieldtype = "TXT"
  ttl = 0
  target = "hosted-email-verify=pl8w0tbw"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823143" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_autodiscover._tcp"
  fieldtype = "SRV"
  ttl = 0
  target = "0 1 443 autodiscover.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823144" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl = 0
  target = "v=DMARC1; p=quarantine;"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823145" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl = 0
  target = "6e7477e53f167a4e6b126c03d42501"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823146" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_imaps._tcp"
  fieldtype = "SRV"
  ttl = 0
  target = "0 1 993 imap.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823147" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_pop3s._tcp"
  fieldtype = "SRV"
  ttl = 0
  target = "0 1 995 pop.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823148" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "_submissions._tcp"
  fieldtype = "SRV"
  ttl = 0
  target = "0 1 465 smtp.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823149" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "autoconfig"
  fieldtype = "CNAME"
  ttl = 0
  target = "autoconfig.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823150" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "key1._domainkey"
  fieldtype = "CNAME"
  ttl = 0
  target = "key1.g4b.ovh._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823151" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "key2._domainkey"
  fieldtype = "CNAME"
  ttl = 0
  target = "key2.g4b.ovh._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823152" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "key3._domainkey"
  fieldtype = "CNAME"
  ttl = 0
  target = "key3.g4b.ovh._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823153" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "potain3"
  fieldtype = "TXT"
  ttl = 0
  target = "https://static.augendre.info/potain3/"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823154" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "status"
  fieldtype = "A"
  ttl = 0
  target = "213.186.33.5"
}

resource "ovh_domain_zone_record" "g4b_ovh_5274823155" {
  zone = data.ovh_domain_zone.g4b_ovh.name
  subdomain = "status"
  fieldtype = "TXT"
  ttl = 0
  target = "1|https://stats.uptimerobot.com/5wKo4t0XqO"
}
