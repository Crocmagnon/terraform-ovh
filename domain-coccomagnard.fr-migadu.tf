module "coccomagnard_fr_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.coccomagnard_fr.name
  ttl    = local.domain_ttl
}
