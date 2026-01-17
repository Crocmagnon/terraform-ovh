locals {
  ip_cercie                        = "82.66.199.43"
  ip_cidr_home                     = "82.65.167.55/32"
  ip_vps_3_v4                      = toset([for k, v in data.ovh_vps.vps_3.ips : v if strcontains(v, ".")])
  ip_srv_1_v4                      = toset([for k, v in data.ovh_dedicated_server.srv_1.ips : trimsuffix(v, "/32") if strcontains(v, ".")])
  ip_srv_1_v6                      = toset([for k, v in data.ovh_dedicated_server.srv_1.ips : trimsuffix(v, "/128") if strcontains(v, ":")])
  domain_long_ttl                  = 86400
  domain_short_ttl                 = 600
  domain_target_vps_3_tailscale_v4 = "100.82.177.24"
  domain_target_vps_3_tailscale_v6 = "fd7a:115c:a1e0::aa01:b16a"
  domain_target_srv_1_public       = "srv-1.augendre.info."
  domain_target_srv_1_tailscale_v4 = "100.90.33.70"
  domain_target_srv_1_tailscale_v6 = "fd7a:115c:a1e0::c101:2185"
  domain_target_home_tailscale_v4  = "100.97.36.10"
  domain_target_home_tailscale_v6  = "fd7a:115c:a1e0::6b01:8e33"
}
