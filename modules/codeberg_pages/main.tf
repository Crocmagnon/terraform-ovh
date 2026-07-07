variable "zone" {
  description = "OVH domain zone"
  type        = string
}

variable "ttl" {
  description = "TTL for the records"
  type        = number
}

variable "repo_url" {
  description = "HTTPS Git clone URL of the repository"
  type        = string
}

variable "subdomain" {
  description = "Subdomain for the codeberg pages"
  type        = string
}

resource "ovh_domain_zone_record" "this_webhook_auth" {
  zone      = var.zone
  subdomain = "_git-pages-repository.${var.subdomain}"
  fieldtype = "TXT"
  ttl       = var.ttl
  target    = "\"${var.repo_url}\""
}

resource "ovh_domain_zone_record" "this_forgejo_auth" {
  zone      = var.zone
  subdomain = "_git-pages-forge-allowlist.${var.subdomain}"
  fieldtype = "TXT"
  ttl       = var.ttl
  target    = "\"${var.repo_url}\""
}

resource "ovh_domain_zone_record" "this_a" {
  zone      = var.zone
  subdomain = var.subdomain
  fieldtype = "A"
  ttl       = var.ttl
  target    = "217.197.84.141"
}

resource "ovh_domain_zone_record" "this_aaaa" {
  zone      = var.zone
  subdomain = var.subdomain
  fieldtype = "AAAA"
  ttl       = var.ttl
  target    = "2a0a:4580:103f:c0de::2"
}
