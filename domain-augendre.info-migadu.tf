module "augendre_info_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.augendre_info.name
  ttl    = local.domain_ttl
}
