module "gabnotes_org_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.gabnotes_org.name
  ttl    = local.domain_ttl
}
