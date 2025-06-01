module "coccomagnard_fr_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.coccomagnard_fr.name
  ttl    = local.domain_ttl
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823158
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_mx_10_apex
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823159
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_mx_20_apex
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823163
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_spf
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823164
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_mx_20_wildcard
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823165
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_mx_10_wildcard
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823167
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_autodiscover
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823168
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_dmarc
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823171
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_imaps
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823173
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_autoconfig
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823172
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_smtp
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823177
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_domainkey_1
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823178
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_domainkey_2
}

moved {
  from = ovh_domain_zone_record.coccomagnard_fr_5274823179
  to   = module.coccomagnard_fr_migadu.ovh_domain_zone_record.this_domainkey_3
}
