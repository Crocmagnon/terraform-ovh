variable "ipv4" {
  type        = string
  description = "IPv4 A target"
}

variable "ipv6" {
  type        = string
  description = "IPv6 AAAA target"
}

variable "zone" {
  type        = string
  description = "DNS zone"
}

variable "subdomain" {
  type        = string
  description = "Subdomain"
}

variable "ttl" {
  type        = number
  description = "Record TTL"
}

resource "ovh_domain_zone_record" "this_v4" {
  zone      = var.zone
  subdomain = var.subdomain
  fieldtype = "A"
  ttl       = var.ttl
  target    = var.ipv4
}

resource "ovh_domain_zone_record" "this_v6" {
  zone      = var.zone
  subdomain = var.subdomain
  fieldtype = "AAAA"
  ttl       = var.ttl
  target    = var.ipv6
}