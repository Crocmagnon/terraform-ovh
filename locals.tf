locals {
  ip_home                          = "82.65.167.55"
  ip_cercie                        = "82.66.199.43"
  ip_cidr_home                     = "${local.ip_home}/32"
  ip_vps_2_v4                      = toset([for k, v in data.ovh_vps.vps_2.ips : k if strcontains(k, ".")])
  ip_vps_3_v4                      = toset([for k, v in data.ovh_vps.vps_3.ips : k if strcontains(k, ".")])
  ip_vps_3_v6                      = toset([for k, v in data.ovh_vps.vps_3.ips : k if strcontains(k, ":")])
  domain_long_ttl                  = 86400
  domain_short_ttl                 = 600
  domain_target_vps_3_public       = "vps-3.augendre.info."
  domain_target_vps_3_tailscale_v4 = "100.104.117.97"
  domain_target_vps_3_tailscale_v6 = "fd7a:115c:a1e0::ea01:7562"
  domain_target_home_tailscale_v4  = "100.97.36.10"
  domain_target_home_tailscale_v6  = "fd7a:115c:a1e0::6b01:8e33"
}
