data "ovh_vps" "vps_3" {
  service_name = "vps-a9dbfd5c.vps.ovh.net"
}

resource "ovh_ip_firewall" "vps_3_firewall" {
  for_each       = local.ip_vps_3_v4
  ip             = "${each.key}/32"
  ip_on_firewall = each.key
}

resource "ovh_ip_firewall_rule" "vps_3_allow_home" {
  for_each       = ovh_ip_firewall.vps_3_firewall
  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
  source         = local.ip_cidr_home
  sequence       = 0
  action         = "permit"
  protocol       = "ipv4"
}

resource "ovh_ip_firewall_rule" "vps_3_deny_all_other" {
  for_each       = ovh_ip_firewall.vps_3_firewall
  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
  sequence       = 19
  action         = "deny"
  protocol       = "ipv4"
}