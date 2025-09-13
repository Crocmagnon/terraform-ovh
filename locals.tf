locals {
  ip_home                         = "82.65.167.55"
  ip_cercie                       = "82.66.199.43"
  ip_cidr_home                    = "${local.ip_home}/32"
  ip_vps_2_v4                     = toset([for k, v in data.ovh_vps.vps_2.ips : k if strcontains(k, ".")])
  ip_vps_2_v6                     = toset([for k, v in data.ovh_vps.vps_2.ips : k if strcontains(k, ":")])
  domain_long_ttl                 = 86400
  domain_short_ttl                = 600
  domain_target_vps_public        = "vps-2.augendre.info."
  domain_target_vps_tailscale_v4  = "100.98.152.47"
  domain_target_vps_tailscale_v6  = "fd7a:115c:a1e0::f601:9830"
  domain_target_home_tailscale_v4 = "100.97.36.10"
  domain_target_home_tailscale_v6 = "fd7a:115c:a1e0::6b01:8e33"
}