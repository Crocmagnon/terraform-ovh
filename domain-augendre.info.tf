data "ovh_domain_zone" "augendre_info" {
  name = "augendre.info"
}

resource "ovh_domain_zone_record" "augendre_info_5274823378" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = 0
  target    = "ns109.ovh.net."
}

resource "ovh_domain_zone_record" "augendre_info_5274823379" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "NS"
  ttl       = 0
  target    = "dns109.ovh.net."
}

resource "ovh_domain_zone_record" "augendre_info_5274823380" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = 0
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823381" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "MX"
  ttl       = 0
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823382" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "A"
  ttl       = 0
  target    = "82.65.167.55"
}

resource "ovh_domain_zone_record" "augendre_info_5274823383" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = 0
  target    = "0 issue \"letsencrypt.org\""
}

resource "ovh_domain_zone_record" "augendre_info_5274823384" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "CAA"
  ttl       = 0
  target    = "0 issue \"zerossl.com\""
}

resource "ovh_domain_zone_record" "augendre_info_5274823385" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "SPF"
  ttl       = 0
  target    = "v=spf1 include:mx.ovh.com include:spf.migadu.com -all"
}

resource "ovh_domain_zone_record" "augendre_info_5274823386" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = ""
  fieldtype = "TXT"
  ttl       = 0
  target    = "hosted-email-verify=xehxnesp"
}

resource "ovh_domain_zone_record" "augendre_info_5274823387" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "*"
  fieldtype = "MX"
  ttl       = 0
  target    = "20 aspmx2.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823388" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "*"
  fieldtype = "MX"
  ttl       = 0
  target    = "10 aspmx1.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823389" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "*.gc"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823390" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_autodiscover._tcp"
  fieldtype = "SRV"
  ttl       = 0
  target    = "1 1 443 autodiscover.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823391" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_dmarc"
  fieldtype = "DMARC"
  ttl       = 0
  target    = "v=DMARC1;p=reject;pct=100;rua=mailto:bzphlmdj@ag.eu.dmarcian.com;sp=reject;aspf=s;"
}

resource "ovh_domain_zone_record" "augendre_info_5274823392" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_github-pages-challenge-crocmagnon"
  fieldtype = "TXT"
  ttl       = 0
  target    = "922dad7e6712db1c8682ebc00fa7f5"
}

resource "ovh_domain_zone_record" "augendre_info_5274823393" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_imaps._tcp"
  fieldtype = "SRV"
  ttl       = 0
  target    = "1 1 993 imap.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823394" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_pop3s._tcp"
  fieldtype = "SRV"
  ttl       = 0
  target    = "1 1 995 pop.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823395" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_submissions._tcp"
  fieldtype = "SRV"
  ttl       = 0
  target    = "1 1 465 smtp.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823397" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "autoconfig"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823398" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "bin"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823399" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "blog"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823400" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "charasheet"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823402" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "checkout"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823403" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cloud"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823404" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "code"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823406" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cv-gabriel"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823408" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "display"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823409" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "doses"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "crocmagnon.github.io."
}

resource "ovh_domain_zone_record" "augendre_info_5274823411" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "email.mg"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "mailgun.org."
}

resource "ovh_domain_zone_record" "augendre_info_5274823412" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "fournitures"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823413" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "friendsmap"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823414" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "gabriel"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823415" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "gc"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823416" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "git"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823418" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "hass"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823420" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "k1._domainkey.mg"
  fieldtype = "DKIM"
  ttl       = 0
  target    = "k=rsa;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuQjT4Q30jOLnhkk3MLh8WNrVGPl2CD4/lK+1q5vvra6TIWgHUbIDPGVCeImnRA+qk5b/IuJnoFFigcAD9rPMTkd4uN1mBN22OuWcI5xQALnJMt0NDNzeukg7kIgbFjgFJCUjhYh4c4EH6xZI733qpUxgIv7KgPGRU5R3uOlXg8wIDAQAB;t=s;"
}

resource "ovh_domain_zone_record" "augendre_info_5274823421" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "key1._domainkey"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "key1.augendre.info._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823422" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "key2._domainkey"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "key2.augendre.info._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823423" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "key3._domainkey"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "key3.augendre.info._domainkey.migadu.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823424" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mail"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823425" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "manuels"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823426" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = 0
  target    = "10 mxb.mailgun.org."
}

resource "ovh_domain_zone_record" "augendre_info_5274823427" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mg"
  fieldtype = "MX"
  ttl       = 0
  target    = "10 mxa.mailgun.org."
}

resource "ovh_domain_zone_record" "augendre_info_5274823428" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mg"
  fieldtype = "SPF"
  ttl       = 0
  target    = "v=spf1 include:mailgun.org ~all"
}

resource "ovh_domain_zone_record" "augendre_info_5274823430" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "nginx"
  fieldtype = "A"
  ttl       = 0
  target    = "82.65.167.55"
}

resource "ovh_domain_zone_record" "augendre_info_5274823431" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "office"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823432" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "paste"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823433" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "plex"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823434" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "prowlarr"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823436" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "radarr"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823437" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "reader"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823439" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "sonarr"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823440" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "static"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823441" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "status"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "reports.hetrixtools.com."
}

resource "ovh_domain_zone_record" "augendre_info_5274823442" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "tcl"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823443" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "test"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823444" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "transmission"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823445" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "uptime"
  fieldtype = "A"
  ttl       = 0
  target    = "213.186.33.5"
}

resource "ovh_domain_zone_record" "augendre_info_5274823446" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "uptime"
  fieldtype = "TXT"
  ttl       = 0
  target    = "1|https://stats.uptimerobot.com/5wKo4t0XqO"
}

resource "ovh_domain_zone_record" "augendre_info_5274823447" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "voyages"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5274823448" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "wallabag"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx"
}

resource "ovh_domain_zone_record" "augendre_info_5281160975" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "portainer"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5284047449" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "nextcloud-kibana"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5286217336" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "internal-static"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5288599880" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "charasheet-go"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5293296439" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cercie"
  fieldtype = "A"
  ttl       = 0
  target    = "82.66.199.43"
}

resource "ovh_domain_zone_record" "augendre_info_5295045733" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "kirby"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5295051062" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mariage"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5295054193" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "ghost"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5296078649" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "rustdesk"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5302259536" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "qr"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5302259539" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "qrcode"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5310258599" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "netdisco"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5314899154" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "voyages-lois"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5317645990" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "ovhmo2692340-selector2._domainkey"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "ovhmo2692340-selector2._domainkey.655220.hn.dkim.mail.ovh.net."
}

resource "ovh_domain_zone_record" "augendre_info_5317645993" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "ovhmo2692340-selector1._domainkey"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "ovhmo2692340-selector1._domainkey.655221.hn.dkim.mail.ovh.net."
}

resource "ovh_domain_zone_record" "augendre_info_5325568092" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "prusalink"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5333719196" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cloud-aio"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5333719197" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "aio"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5333763083" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cloud-old"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5337967994" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "paperless"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5345300513" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "stirlingpdf"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5345544778" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "esphome"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5346028581" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "hasscasa"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "qe7jfmivnxuislrlgljlour4eiv0vbe7.ui.nabu.casa."
}

resource "ovh_domain_zone_record" "augendre_info_5346028597" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "_acme-challenge.hasscasa"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "_acme-challenge.qe7jfmivnxuislrlgljlour4eiv0vbe7.ui.nabu.casa."
}

resource "ovh_domain_zone_record" "augendre_info_5356213034" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "ech"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_5357425037" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "rclone"
  fieldtype = "CNAME"
  ttl       = 86400
  target    = "nginx.augendre.info."
}

resource "ovh_domain_zone_record" "augendre_info_go_cname" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "go"
  fieldtype = "CNAME"
  ttl       = 0
  target    = "crocmagnon.github.io."
}

