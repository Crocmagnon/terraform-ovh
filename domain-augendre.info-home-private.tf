module "augendre_info_5274823433" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "plex"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_home_tailscale_v4
  ipv6      = local.domain_target_home_tailscale_v6
}

module "augendre_info_5274823434" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "prowlarr"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_home_tailscale_v4
  ipv6      = local.domain_target_home_tailscale_v6
}

module "augendre_info_5274823436" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "radarr"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_home_tailscale_v4
  ipv6      = local.domain_target_home_tailscale_v6
}

module "augendre_info_5274823439" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "sonarr"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_home_tailscale_v4
  ipv6      = local.domain_target_home_tailscale_v6
}

module "augendre_info_5274823444" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "transmission"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_home_tailscale_v4
  ipv6      = local.domain_target_home_tailscale_v6
}

module "augendre_info_5281160975" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "portainer"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_home_tailscale_v4
  ipv6      = local.domain_target_home_tailscale_v6
}

module "augendre_info_5325568092" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "prusalink"
  ttl       = local.domain_short_ttl
  ipv4      = local.domain_target_home_tailscale_v4
  ipv6      = local.domain_target_home_tailscale_v6
}

module "augendre_info_hass" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "hass"
  ttl       = local.domain_short_ttl
  ipv4      = "192.168.0.9"
  ipv6      = "2a01:e0a:325:a1c0:a510:a88a:2977:5433"
}
