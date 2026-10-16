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

import {
  to = ovh_cloud_project_storage_object_bucket_lifecycle_configuration.terraform
  id = "${ovh_cloud_project.catch_all.id}/${module.s3_terraform.bucket_region}/${module.s3_terraform.bucket_name}"
}

resource "ovh_cloud_project_storage_object_bucket_lifecycle_configuration" "terraform" {
  service_name   = ovh_cloud_project.catch_all.id
  region_name    = module.s3_terraform.bucket_region
  container_name = module.s3_terraform.bucket_name

  rules = [
    {
      id     = "keep-non-current-5d"
      status = "enabled"
      noncurrent_version_expiration = {
        noncurrent_days = 5
      }
      abort_incomplete_multipart_upload = {
        days_after_initiation = 2
      }
    },
    local.lifecycle_expire_solo_delete_markers,
  ]
}

### S3 for pCloud sync

module "s3_pcloud_sync" {
  source = "./modules/s3"

  name       = "pcloud_sync"
  project_id = ovh_cloud_project.catch_all.id
  encryption = true
  versioning = true
}

# Small objects (<128KiB) are never transitioned by the server: the bucket default
# transition_default_minimum_object_size is all_storage_classes_128K.
import {
  to = ovh_cloud_project_storage_object_bucket_lifecycle_configuration.pcloud_sync
  id = "${ovh_cloud_project.catch_all.id}/${module.s3_pcloud_sync.bucket_region}/${module.s3_pcloud_sync.bucket_name}"
}

resource "ovh_cloud_project_storage_object_bucket_lifecycle_configuration" "pcloud_sync" {
  service_name   = ovh_cloud_project.catch_all.id
  region_name    = module.s3_pcloud_sync.bucket_region
  container_name = module.s3_pcloud_sync.bucket_name

  rules = [
    {
      id     = "infrequent-access-30d-keep-non-current-31d"
      status = "enabled"
      transitions = [
        {
          days          = 30
          storage_class = "STANDARD_IA"
        },
      ]
      # Non-current versions are not moved to STANDARD_IA: IA bills a 30 day minimum,
      # so moving them one day before deletion would be pure extra cost.
      noncurrent_version_expiration = {
        noncurrent_days = 31
      }
      abort_incomplete_multipart_upload = {
        days_after_initiation = 7
      }
    },
    local.lifecycle_expire_solo_delete_markers,
  ]
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
