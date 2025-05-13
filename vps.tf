data "ovh_vps" "vps_1" {
  service_name = "vps-8ea8f91f.vps.ovh.net"
}

resource "ovh_ip_firewall" "vps_1_firewall" {
  for_each       = { for k, v in data.ovh_vps.vps_1.ips : k => v if strcontains(k, ".") } # cheap ipv4 vs ipv6 filter
  ip             = "${each.key}/32"
  ip_on_firewall = each.key
}

resource "ovh_ip_firewall_rule" "vps_1_allow_home" {
  for_each       = ovh_ip_firewall.vps_1_firewall
  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
  source         = local.home_ip_cidr
  sequence       = 0
  action         = "permit"
  protocol       = "ipv4"
}

resource "ovh_ip_firewall_rule" "vps_1_deny_all_other" {
  for_each       = ovh_ip_firewall.vps_1_firewall
  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
  sequence       = 19
  action         = "deny"
  protocol       = "ipv4"
}