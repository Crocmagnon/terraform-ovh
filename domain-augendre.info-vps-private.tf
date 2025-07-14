module "augendre_info_5274823404" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "code"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}

module "augendre_info_5274823443" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "test"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}

module "augendre_info_portainer_vps" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "portainer-vps-1"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}

module "augendre_info_5345300513" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "pdf"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}

module "augendre_info_5337967994" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "paperless"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}

module "augendre_info_5274823442" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "tcl"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}

module "augendre_info_webdav" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "webdav"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}

module "augendre_info_radicale" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "radicale"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}

module "augendre_info_fmd" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "fmd"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_vps_tailscale_v4
  ipv6      = local.domain_target_vps_tailscale_v6
}
