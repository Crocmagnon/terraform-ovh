terraform {
  required_version = ">=1.6.0"
  backend "s3" {
    bucket = "terraform-state-gaugendre"
    key    = "terraform.tfstate"
    region = "gra"
    endpoints = {
      s3 = "https://s3.gra.io.cloud.ovh.net/"
    }
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~>2.12"
    }
  }
}
