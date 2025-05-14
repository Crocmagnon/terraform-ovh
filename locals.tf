locals {
  ip_home                      = "82.65.167.55"
  ip_cercie                    = "82.66.199.43"
  ip_cidr_home                 = "${local.ip_home}/32"
  ip_vps_1_v4                  = toset([for k, v in data.ovh_vps.vps_1.ips : k if strcontains(k, ".")])
  ip_vps_1_v6                  = toset([for k, v in data.ovh_vps.vps_1.ips : k if strcontains(k, ":")])
  domain_ttl                   = 86400
  domain_target_vps_public     = "vps-1.augendre.info."
  domain_target_vps_tailscale  = "vps-1.taila7a600.ts.net."
  domain_target_home_public    = "nginx.augendre.info."
  domain_target_home_tailscale = "ubuntu.taila7a600.ts.net."
}