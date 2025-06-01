module "gabnotes_org_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.gabnotes_org.name
  ttl    = local.domain_ttl
}

moved {
  from = ovh_domain_zone_record.gabnotes_org_5295328886
  to   = module.gabnotes_org_migadu.ovh_domain_zone_record.this_mx_10_apex
}

moved {
  from = ovh_domain_zone_record.gabnotes_org_5295328885
  to   = module.gabnotes_org_migadu.ovh_domain_zone_record.this_mx_20_apex
}

moved {
  from = ovh_domain_zone_record.gabnotes_org_5295328890
  to   = module.gabnotes_org_migadu.ovh_domain_zone_record.this_spf
}

moved {
  from = ovh_domain_zone_record.gabnotes_org_5295328893
  to   = module.gabnotes_org_migadu.ovh_domain_zone_record.this_dmarc
}

moved {
  from = ovh_domain_zone_record.gabnotes_org_5295328898
  to   = module.gabnotes_org_migadu.ovh_domain_zone_record.this_domainkey_1
}

moved {
  from = ovh_domain_zone_record.gabnotes_org_5295328899
  to   = module.gabnotes_org_migadu.ovh_domain_zone_record.this_domainkey_2
}

moved {
  from = ovh_domain_zone_record.gabnotes_org_5295328900
  to   = module.gabnotes_org_migadu.ovh_domain_zone_record.this_domainkey_3
}
