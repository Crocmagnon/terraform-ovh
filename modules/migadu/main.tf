variable "zone" {
  description = "OVH domain zone"
  type        = string
}

variable "ttl" {
  description = "TTL for the records"
  type        = number
}

variable "spf" {
  description = "SPF entry"
  type        = string
  default     = "v=spf1 include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "this_mx_10_apex" {
  zone      = var.zone
  subdomain = ""
  fieldtype = "MX"
  ttl       = var.ttl
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "this_mx_20_apex" {
  zone      = var.zone
  subdomain = ""
  fieldtype = "MX"
  ttl       = var.ttl
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "this_mx_10_wildcard" {
  zone      = var.zone
  subdomain = "*"
  fieldtype = "MX"
  ttl       = var.ttl
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "this_mx_20_wildcard" {
  zone      = var.zone
  subdomain = "*"
  fieldtype = "MX"
  ttl       = var.ttl
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "this_autoconfig" {
  zone      = var.zone
  subdomain = "autoconfig"
  fieldtype = "CNAME"
  ttl       = var.ttl
  target    = "autoconfig.migadu.com."
}

resource "ovh_domain_zone_record" "this_autodiscover" {
  zone      = var.zone
  subdomain = "_autodiscover._tcp"
  fieldtype = "SRV"
  ttl       = var.ttl
  target    = "0 1 443 autodiscover.migadu.com."
}

resource "ovh_domain_zone_record" "this_imaps" {
  zone      = var.zone
  subdomain = "_imaps._tcp"
  fieldtype = "SRV"
  ttl       = var.ttl
  target    = "0 1 993 imap.migadu.com."
}

resource "ovh_domain_zone_record" "this_pop3s" {
  zone      = var.zone
  subdomain = "_pop3s._tcp"
  fieldtype = "SRV"
  ttl       = var.ttl
  target    = "0 1 995 pop.migadu.com."
}

resource "ovh_domain_zone_record" "this_smtp" {
  zone      = var.zone
  subdomain = "_submissions._tcp"
  fieldtype = "SRV"
  ttl       = var.ttl
  target    = "0 1 465 smtp.migadu.com."
}

resource "ovh_domain_zone_record" "this_domainkey_1" {
  zone      = var.zone
  subdomain = "key1._domainkey"
  fieldtype = "CNAME"
  ttl       = var.ttl
  target    = "key1.${var.zone}._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "this_domainkey_2" {
  zone      = var.zone
  subdomain = "key2._domainkey"
  fieldtype = "CNAME"
  ttl       = var.ttl
  target    = "key2.${var.zone}._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "this_domainkey_3" {
  zone      = var.zone
  subdomain = "key3._domainkey"
  fieldtype = "CNAME"
  ttl       = var.ttl
  target    = "key3.${var.zone}._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "this_spf" {
  zone      = var.zone
  subdomain = ""
  fieldtype = "SPF"
  ttl       = var.ttl
  target    = var.spf
}

resource "ovh_domain_zone_record" "this_dmarc" {
  zone      = var.zone
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = var.ttl
  target    = "v=DMARC1;p=reject;"
}
