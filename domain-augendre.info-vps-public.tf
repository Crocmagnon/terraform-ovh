resource "ovh_domain_zone_record" "augendre_info_cv" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "cv-gabriel"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_static" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "static"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_git" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "git"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_qrcode" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "qrcode"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_mail" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mail"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

resource "ovh_domain_zone_record" "augendre_info_mariage" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "mariage"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}

# Readeck, Miniflux et Authelia (dont dépend leur connexion OIDC), sortis du tailnet : lecture et
# partage hors Tailscale. A/AAAA plutôt que CNAME comme le reste de ce fichier : passer d'A à CNAME
# sur le même nom détruirait et recréerait les enregistrements, alors qu'un changement de cible se
# fait sur place. auth.srv-1 prend le pas sur le wildcard privé *.srv-1.
module "augendre_info_reader" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "reader"
  ttl       = local.domain_ttl
  ipv4      = one(local.ip_srv_1_v4)
  ipv6      = one(local.ip_srv_1_v6)
}

module "augendre_info_readeck" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "readeck"
  ttl       = local.domain_ttl
  ipv4      = one(local.ip_srv_1_v4)
  ipv6      = one(local.ip_srv_1_v6)
}

module "augendre_info_auth_srv_1" {
  source    = "./modules/five_a_batteries"
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "auth.srv-1"
  ttl       = local.domain_ttl
  ipv4      = one(local.ip_srv_1_v4)
  ipv6      = one(local.ip_srv_1_v6)
}

# Services « internes » publiés sans Tailscale, sans jolie URL (ex. kosync.srv-1-pub) : Caddy ne
# répond qu'aux noms qu'il déclare, et chaque vhost ne publie que les chemins utiles.
resource "ovh_domain_zone_record" "augendre_info_wildcard_srv_1_pub" {
  zone      = data.ovh_domain_zone.augendre_info.name
  subdomain = "*.srv-1-pub"
  fieldtype = "CNAME"
  ttl       = local.domain_ttl
  target    = local.domain_target_srv_1_public
}
