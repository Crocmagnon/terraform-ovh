module "g4b_ovh_migadu" {
  source = "./modules/migadu"
  zone   = data.ovh_domain_zone.g4b_ovh.name
  ttl    = local.domain_ttl
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823138
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_mx_10_apex
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823139
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_mx_20_apex
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823141
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_spf
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823143
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_autodiscover
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823144
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_dmarc
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823146
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_imaps
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823147
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_pop3s
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823149
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_autoconfig
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823148
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_smtp
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823150
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_domainkey_1
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823151
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_domainkey_2
}

moved {
  from = ovh_domain_zone_record.g4b_ovh_5274823152
  to   = module.g4b_ovh_migadu.ovh_domain_zone_record.this_domainkey_3
}

