data "ovh_domain_zone" "coccomagnard_fr" {
  name = "coccomagnard.fr"
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823156" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns113.ovh.net."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823157" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns113.ovh.net."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823158" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823159" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_apex_v4" {
  for_each  = local.ip_vps_1_v4
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "coccomagnard_fr_apex_v6" {
  for_each  = local.ip_vps_1_v6
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "AAAA"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823162" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "hosted-email-verify=klobw3ff"
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823163" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823164" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "*"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823165" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "*"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823167" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_autodiscover._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 443 autodiscover.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823168" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = local.domain_ttl
  target    = "v=DMARC1; p=reject;"
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823169" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_dmarc.mg"
  fieldtype = "DMARC"
  ttl       = local.domain_ttl
  target    = "v=DMARC1; p=quarantine; pct=100; fo=1"
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823170" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "c99083508123d786b91ea993208a6b"
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823171" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_imaps._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 993 imap.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823172" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "_submissions._tcp"
  fieldtype = "SRV"
  ttl       = local.domain_ttl
  target    = "0 1 465 smtp.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823173" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "autoconfig"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "autoconfig.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823174" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "email._domainkey.mg"
  fieldtype = "DKIM"
  ttl       = local.domain_ttl
  target    = "k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA01xwuCIXBoNFKrvRW5MLoF5058MwMe3b+Eve+BF8H3OD4Z9Y51/KRoPhQgV8iNdOYSixdjwFnkqc1Km1cG/BYzz+aqeSkc3py1zRxW9/d81c10Le0ghFY4RJVGck05aznmCbPtgs4u3UYocvwjZ1Q/Gu1QFsWMpmWvtc9E15+j+e0B3zw3NpWfwHuVNlvaZ3uHe6cYIMIvfbzK3uE1BRZiaN+Fs4zAoBmSRDtAmogNkkYQLl01chi3643SnQ6TmRchVN4bqyPXXo3ugKW8Zw6g5Ply2e6qBhia7bQmxgk8Ewobqoa5fRtsTuGy0hmfEoxme8DCql6dDCfz0VAfLi4QIDAQAB"
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823175" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "email.mg"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "eu.mailgun.org."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823177" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "key1._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key1.coccomagnard.fr._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823178" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "key2._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key2.coccomagnard.fr._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823179" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "key3._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "key3.coccomagnard.fr._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823180" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 mxa.eu.mailgun.org."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823181" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 mxb.eu.mailgun.org."
}

resource "ovh_domain_zone_record" "coccomagnard_fr_5274823182" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "mg"
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:mailgun.org ~all"
}

resource "ovh_domain_zone_record" "coccomagnard_fr_voyages" {
  zone      = data.ovh_domain_zone.coccomagnard_fr.name
  subdomain = "voyages"
  fieldtype = "CNAME"
  ttl       = 60
  target    = "pika.page."
}
