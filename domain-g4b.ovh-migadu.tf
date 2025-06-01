module "g4b_ovh_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.g4b_ovh.name
  ttl    = local.domain_ttl
}
