data "ovh_dedicated_server" "mystery" {
  service_name = "ns323162.ip-37-187-156.eu"
}

data "ovh_dedicated_installation_template" "template" {
  template_name = "ubuntu2404-server_64"
}

resource "ovh_dedicated_server_reinstall_task" "server_reinstall" {
  service_name = data.ovh_dedicated_server.mystery.service_name
  os           = data.ovh_dedicated_installation_template.template.template_name
  customizations {
    hostname = "test-ubuntu"
    ssh_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDtkKhQocnBS3QlYhxRQNbiCvTSrtpn1hp+KywkNY/RrKHKUkqMVkBJO31UMsReOu0rlbGZ2VRgvK+3JC7TidEQGpjnP60oSqJFvM3z8oboBP2Kdd14JN1HlWNDZmeVy5wk9HUsFPwXAxPgV7cmagOSFufB40Z95+LimTeDceNF9V/Dllw0nDzOOCc7zHlsjDT2YCPfKDUT6uDbr/xK/RxDgv6KMd0I61B9hOg8BTjUfqBq52mqOVO/EOLQt9+pb2IAxDRmQ1wEo07S0Jci+PDYAtyDezKbyg7jImn6H53GamHMUh9hyc7BDMRb/71FL630zvZrWLA/dqbvqpBgCKqsyzNdSqPNSi5qb5EABmdYJOSIE5zGlKS94qGfKAwg+CyzpTE7r1scTcCcCXaJOQI6cHUtznSoy1biFeyDl0Z7lHFuXIJw1jN6Z3l3KGmsm/5Byz3aU0Ny4A4MdBAcOnxymoQXG0TORQTGo33aACLf3+Migb3f9x+DtaCEEsaXoqSbBqGCJV8yLoW2AyrIevWRdjhTHT8A/t3p+tsjD6sGY7cgrZZhuqtQfnyCQlWtvvQ7vdegA5E7Os2ZPPvi4J6g0Pye6uhVlRAQDSlu+kAAkcOdw4p3HjViMmNWOZqEqF7B9pLcqNzO5oIHvBVaNoZhBYCEOdxFR/nm3KoNjZdYeQ== gaugendre@bw"
  }
}

locals {
  ip             = "37.187.156.9"
  ip-cidr        = "37.187.156.9/32"
  allowed-source = "82.65.167.55/32"
}

resource "ovh_ip_firewall" "mystery_firewall" {
  ip             = local.ip-cidr
  ip_on_firewall = local.ip
  enabled        = false
}

# ensure that service remains reachable from allowed IP
resource "ovh_ip_firewall_rule" "allow-ipv4" {
  ip             = local.ip-cidr
  ip_on_firewall = local.ip
  source         = local.allowed-source
  sequence       = 0
  action         = "permit"
  protocol       = "ipv4"
}

resource "ovh_ip_firewall_rule" "deny-all-other" {
  ip             = local.ip-cidr
  ip_on_firewall = local.ip
  sequence       = 19
  action         = "deny"
  protocol       = "ipv4"
}
