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