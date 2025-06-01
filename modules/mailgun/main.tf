variable "zone" {
  description = "OVH domain zone"
  type        = string
}

variable "ttl" {
  description = "TTL for the records"
  type        = number
}

variable "endpoint" {
  description = "Mailgun endpoint"
  type        = string

  validation {
    condition     = contains(["eu", "us"], var.endpoint)
    error_message = "Valid values for var: endpoint are (eu, us)."
  }
}

variable "dmarc" {
  description = "DMARC record"
  type        = string
}

variable "dkim" {
  description = "DKIM record"
  type        = string
}

variable "dkim_selector" {
  description = "DKIM subdomain"
  type        = string
}

locals {
  domain_eu = "eu.mailgun.org"
  domain_us = "mailgun.org"
  domain    = var.endpoint == "eu" ? local.domain_eu : local.domain_us
}

resource "ovh_domain_zone_record" "this_email_mg" {
  zone      = var.zone
  subdomain = "email.mg"
  fieldtype = "CNAME"
  ttl       = var.ttl
  target    = "${local.domain}."
}

resource "ovh_domain_zone_record" "this_dkim" {
  zone      = var.zone
  subdomain = "${var.dkim_selector}._domainkey.mg"
  fieldtype = "DKIM"
  ttl       = var.ttl
  target    = var.dkim
}

resource "ovh_domain_zone_record" "this_mxa" {
  zone      = var.zone
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = var.ttl
  target    = "10 mxa.${local.domain}."
}

resource "ovh_domain_zone_record" "this_mxb" {
  zone      = var.zone
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = var.ttl
  target    = "10 mxb.${local.domain}."
}

resource "ovh_domain_zone_record" "this_spf" {
  zone      = var.zone
  subdomain = "mg"
  fieldtype = "SPF"
  ttl       = var.ttl
  target    = "v=spf1 include:${local.domain} -all"
}

resource "ovh_domain_zone_record" "this_dmarc" {
  zone      = var.zone
  subdomain = "_dmarc.mg"
  fieldtype = "DMARC"
  ttl       = var.ttl
  target    = var.dmarc
}
