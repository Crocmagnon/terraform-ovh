data "ovh_vps" "vps_1" {
  service_name = "vps-8ea8f91f.vps.ovh.net"
}

resource "ovh_ip_firewall" "vps_1_firewall" {
  for_each       = local.ip_vps_1_v4
  ip             = "${each.key}/32"
  ip_on_firewall = each.key
}

resource "ovh_ip_firewall_rule" "vps_1_allow_home" {
  for_each       = ovh_ip_firewall.vps_1_firewall
  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
  source         = local.ip_cidr_home
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

data "ovh_vps" "vps_2" {
  service_name = "vps-6c5fbfe1.vps.ovh.net"
}

resource "ovh_ip_firewall" "vps_2_firewall" {
  for_each       = local.ip_vps_2_v4
  ip             = "${each.key}/32"
  ip_on_firewall = each.key
}

resource "ovh_ip_firewall_rule" "vps_2_allow_home" {
  for_each       = ovh_ip_firewall.vps_2_firewall
  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
  source         = local.ip_cidr_home
  sequence       = 0
  action         = "permit"
  protocol       = "ipv4"
}

resource "ovh_ip_firewall_rule" "vps_2_deny_all_other" {
  for_each       = ovh_ip_firewall.vps_2_firewall
  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
  sequence       = 19
  action         = "deny"
  protocol       = "ipv4"
}