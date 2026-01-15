import {
  to = ovh_cloud_project.catch_all
  id = "7fe7396bf3c74028988a1fc4218d8fef"
}

resource "ovh_cloud_project" "catch_all" {
  description    = "Catch all project"
  ovh_subsidiary = null
}

### S3 for terraform backend

module "s3_terraform" {
  source = "./modules/s3"

  name       = "terraform-state"
  project_id = ovh_cloud_project.catch_all.id
  encryption = true
  versioning = true
}

### S3 for restic backups

module "s3_restic_backups" {
  source = "./modules/s3"

  name       = "restic-backups"
  project_id = ovh_cloud_project.catch_all.id
  encryption = true
  versioning = false
}

### S3 for pCloud sync

module "s3_pcloud_sync" {
  source = "./modules/s3"

  name       = "pcloud_sync"
  project_id = ovh_cloud_project.catch_all.id
  encryption = true
  versioning = true
}

### S3 for restic vps backups

module "s3_restic_vps_backups" {
  source = "./modules/s3"

  name       = "restic_vps-backups"
  project_id = ovh_cloud_project.catch_all.id
  encryption = true
  versioning = false
  region     = "SBG"
}

### S3 for restic vps-3

module "s3_restic_vps_3" {
  source = "./modules/s3"

  name       = "restic-vps-3"
  project_id = ovh_cloud_project.catch_all.id
  encryption = true
  versioning = false
  region     = "SBG"
}

### S3 for restic srv-1

module "s3_restic_srv_1" {
  source = "./modules/s3"

  name       = "restic-srv-1"
  project_id = ovh_cloud_project.catch_all.id
  encryption = true
  versioning = false
  region     = "SBG"
}
