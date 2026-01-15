data "ovh_dedicated_server" "srv_1" {
  service_name = "ns3112194.ip-54-36-111.eu"
}

resource "ovh_ip_firewall" "srv_1_firewall" {
  for_each       = local.ip_srv_1_v4
  ip             = "${each.key}/32"
  ip_on_firewall = each.key
}

resource "ovh_ip_firewall_rule" "srv_1_allow_home" {
  for_each       = ovh_ip_firewall.srv_1_firewall
  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
  source         = local.ip_cidr_home
  sequence       = 0
  action         = "permit"
  protocol       = "ipv4"
}

resource "ovh_ip_firewall_rule" "srv_1_deny_all_other" {
  for_each       = ovh_ip_firewall.srv_1_firewall
  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
  sequence       = 19
  action         = "deny"
  protocol       = "ipv4"
}
