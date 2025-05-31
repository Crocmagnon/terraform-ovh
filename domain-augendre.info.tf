data "ovh_domain_zone" "augendre_info" {
  name = "augendre.info"
}

resource "ovh_domain_zone_record" "augendre_info_5274823378" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "ns109.ovh.net."
}

resource "ovh_domain_zone_record" "augendre_info_5274823379" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = local.domain_ttl
  target    = "dns109.ovh.net."
}

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

resource "ovh_domain_zone_record" "augendre_info_apex_v4" {
  for_each  = local.ip_vps_1_v4
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "augendre_info_apex_v6" {
  for_each  = local.ip_vps_1_v6
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "AAAA"
  ttl       = local.domain_ttl
  target    = each.key
}

resource "ovh_domain_zone_record" "augendre_info_5274823383" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"letsencrypt.org\""
}

resource "ovh_domain_zone_record" "augendre_info_5274823384" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = local.domain_ttl
  target    = "0 issue \"zerossl.com\""
}

resource "ovh_domain_zone_record" "augendre_info_5274823385" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:mx.ovh.com include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "augendre_info_5274823386" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "hosted-email-verify=xehxnesp"
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

resource "ovh_domain_zone_record" "augendre_info_5274823391" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = local.domain_ttl
  target    = "v=DMARC1;p=reject;pct=100;rua=mailto:bzphlmdj@ag.eu.dmarcian.com;sp=reject;aspf=s;"
}

resource "ovh_domain_zone_record" "augendre_info_5274823392" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "922dad7e6712db1c8682ebc00fa7f5"
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

resource "ovh_domain_zone_record" "augendre_info_5274823409" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "doses"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "crocmagnon.github.io."
}

resource "ovh_domain_zone_record" "augendre_info_5274823411" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "email.mg"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "mailgun.org."
}

resource "ovh_domain_zone_record" "augendre_info_5274823420" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "k1._domainkey.mg"
  fieldtype = "DKIM"
  ttl       = local.domain_ttl
  target    = "k=rsa;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuQjT4Q30jOLnhkk3MLh8WNrVGPl2CD4/lK+1q5vvra6TIWgHUbIDPGVCeImnRA+qk5b/IuJnoFFigcAD9rPMTkd4uN1mBN22OuWcI5xQALnJMt0NDNzeukg7kIgbFjgFJCUjhYh4c4EH6xZI733qpUxgIv7KgPGRU5R3uOlXg8wIDAQAB;t=s;"
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

resource "ovh_domain_zone_record" "augendre_info_5274823426" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 mxb.mailgun.org."
}

resource "ovh_domain_zone_record" "augendre_info_5274823427" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = local.domain_ttl
  target    = "10 mxa.mailgun.org."
}

resource "ovh_domain_zone_record" "augendre_info_5274823428" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mg"
  fieldtype = "SPF"
  ttl       = local.domain_ttl
  target    = "v=spf1 include:mailgun.org ~all"
}

resource "ovh_domain_zone_record" "augendre_info_5274823430" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "nginx"
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = local.ip_home
}

resource "ovh_domain_zone_record" "augendre_info_5274823441" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "status"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "reports.hetrixtools.com."
}

resource "ovh_domain_zone_record" "augendre_info_5293296439" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cercie"
  fieldtype = "A"
  ttl       = local.domain_ttl
  target    = local.ip_cercie
}

resource "ovh_domain_zone_record" "augendre_info_5317645990" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "ovhmo2692340-selector2._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "ovhmo2692340-selector2._domainkey.655220.hn.dkim.mail.ovh.net."
}

resource "ovh_domain_zone_record" "augendre_info_5317645993" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "ovhmo2692340-selector1._domainkey"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "ovhmo2692340-selector1._domainkey.655221.hn.dkim.mail.ovh.net."
}

resource "ovh_domain_zone_record" "augendre_info_5346028581" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "hasscasa"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "qe7jfmivnxuislrlgljlour4eiv0vbe7.ui.nabu.casa."
}

resource "ovh_domain_zone_record" "augendre_info_5346028597" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_acme-challenge.hasscasa"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "_acme-challenge.qe7jfmivnxuislrlgljlour4eiv0vbe7.ui.nabu.casa."
}

resource "ovh_domain_zone_record" "augendre_info_go_cname" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "go"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "crocmagnon.github.io."
}

resource "ovh_domain_zone_record" "augendre_info_vps_1" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "vps-1"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = "${data.ovh_vps.vps_1.service_name}."
}

resource "ovh_domain_zone_record" "augendre_info_google_verif" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = local.domain_ttl
  target    = "google-site-verification=x2oRItA0r6paeQM1fW9yYu63Dm0AzoMSUCP5CtS-WhY"
}
