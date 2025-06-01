module "augendre_info_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.augendre_info.name
  ttl    = local.domain_ttl
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823380
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_mx_10_apex
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823381
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_mx_20_apex
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823385
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_spf
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823387
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_mx_20_wildcard
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823388
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_mx_10_wildcard
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823390
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_autodiscover
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823391
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_dmarc
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823393
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_imaps
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823394
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_pop3s
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823395
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_smtp
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823421
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_domainkey_1
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823422
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_domainkey_2
}

moved {
  from = ovh_domain_zone_record.augendre_info_5274823423
  to   = module.augendre_info_migadu.ovh_domain_zone_record.this_domainkey_3
}