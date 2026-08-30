data "ovh_domain_zone" "gabnotes_fr" {
  name = "gabnotes.fr"
}

import {
  to = ovh_domain_zone_record.gabnotes_fr_spf
  id = "5431815542.gabnotes.fr"
}
resource "ovh_domain_zone_record" "gabnotes_fr_spf" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = 0
  target    = "v=spf1 -all"
}

import {
  to = ovh_domain_zone_record.gabnotes_fr_ns1
  id = "5431815543.gabnotes.fr"
}
resource "ovh_domain_zone_record" "gabnotes_fr_ns1" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = 0
  target    = "dns111.ovh.net."
}

import {
  to = ovh_domain_zone_record.gabnotes_fr_ns2
  id = "5431815544.gabnotes.fr"
}
resource "ovh_domain_zone_record" "gabnotes_fr_ns2" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = 0
  target    = "ns111.ovh.net."
}

# ----------------------------------------------------------------------
# Web services
# ----------------------------------------------------------------------
resource "ovh_domain_zone_record" "gabnotes_fr_apex" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = ""
  fieldtype = "A"
  ttl       = local.domain_short_ttl
  target    = "216.24.57.1" # pika.page
}

resource "ovh_domain_zone_record" "gabnotes_fr_www" {
  zone      = data.ovh_domain_zone.gabnotes_fr.name
  subdomain = "www"
  fieldtype = "CNAME"
  ttl       = local.domain_short_ttl
  target    = "pika.page."
}
