import {
  to = ovh_cloud_project.catch_all
  id = "7fe7396bf3c74028988a1fc4218d8fef"
}

resource "ovh_cloud_project" "catch_all" {
  description    = "Catch all project"
  ovh_subsidiary = null
}

### S3 for terraform backend

resource "ovh_cloud_project_user" "terraform" {
  service_name = ovh_cloud_project.catch_all.id
  description  = "used to access terraform state"
  role_names = [
    "objectstore_operator"
  ]
}

resource "ovh_cloud_project_user_s3_credential" "terraform" {
  service_name = ovh_cloud_project_user.terraform.service_name
  user_id      = ovh_cloud_project_user.terraform.id
}

resource "ovh_cloud_project_storage" "storage" {
  service_name = ovh_cloud_project.catch_all.id
  region_name  = "GRA"
  name         = "terraform-state-gaugendre"
  versioning = {
    status = "enabled"
  }
}

resource "ovh_cloud_project_user_s3_policy" "terraform_rw" {
  service_name = ovh_cloud_project_user.terraform.service_name
  user_id      = ovh_cloud_project_user.terraform.id
  policy = jsonencode({
    Statement = [
      {
        Sid    = "TerraformRW"
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:ListBucket",
        ]
        Resource = [
          "arn:aws:s3:::${ovh_cloud_project_storage.storage.name}",
          "arn:aws:s3:::${ovh_cloud_project_storage.storage.name}/*",
        ]
      },
    ]
  })
}

### S3 for restic backups

resource "ovh_cloud_project_user" "restic_backups" {
  service_name = ovh_cloud_project.catch_all.id
  description  = "used to access restic backups"
  role_names = [
    "objectstore_operator"
  ]
}

resource "ovh_cloud_project_user_s3_credential" "restic_backups" {
  service_name = ovh_cloud_project_user.restic_backups.service_name
  user_id      = ovh_cloud_project_user.restic_backups.id
}

resource "ovh_cloud_project_storage" "restic_backups" {
  service_name = ovh_cloud_project.catch_all.id
  region_name  = "GRA"
  name         = "restic-backups-gaugendre"
}

resource "ovh_cloud_project_user_s3_policy" "restic_backups_rw" {
  service_name = ovh_cloud_project_user.restic_backups.service_name
  user_id      = ovh_cloud_project_user.restic_backups.id
  policy = jsonencode({
    Statement = [
      {
        Sid    = "ResticBackupsRW"
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:ListBucket",
        ]
        Resource = [
          "arn:aws:s3:::${ovh_cloud_project_storage.restic_backups.name}",
          "arn:aws:s3:::${ovh_cloud_project_storage.restic_backups.name}/*",
        ]
      },
    ]
  })
}

### S3 for pCloud sync

resource "ovh_cloud_project_user" "pcloud_sync" {
  service_name = ovh_cloud_project.catch_all.id
  description  = "used to access pcloud_sync"
  role_names = [
    "objectstore_operator"
  ]
}

resource "ovh_cloud_project_user_s3_credential" "pcloud_sync" {
  service_name = ovh_cloud_project_user.pcloud_sync.service_name
  user_id      = ovh_cloud_project_user.pcloud_sync.id
}

resource "ovh_cloud_project_storage" "pcloud_sync" {
  service_name = ovh_cloud_project.catch_all.id
  region_name  = "GRA"
  name         = "pcloud-sync-gaugendre"
}

resource "ovh_cloud_project_user_s3_policy" "pcloud_sync_rw" {
  service_name = ovh_cloud_project_user.pcloud_sync.service_name
  user_id      = ovh_cloud_project_user.pcloud_sync.id
  policy = jsonencode({
    Statement = [
      {
        Sid    = "pCloudSyncRW"
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:ListBucket",
          "s3:PutObjectAcl",
        ]
        Resource = [
          "arn:aws:s3:::${ovh_cloud_project_storage.pcloud_sync.name}",
          "arn:aws:s3:::${ovh_cloud_project_storage.pcloud_sync.name}/*",
        ]
      },
    ]
  })
}

### S3 for restic vps backups

resource "ovh_cloud_project_user" "restic_vps_backups" {
  service_name = ovh_cloud_project.catch_all.id
  description  = "used to access restic_vps backups"
  role_names = [
    "objectstore_operator"
  ]
}

resource "ovh_cloud_project_user_s3_credential" "restic_vps_backups" {
  service_name = ovh_cloud_project_user.restic_vps_backups.service_name
  user_id      = ovh_cloud_project_user.restic_vps_backups.id
}

resource "ovh_cloud_project_storage" "restic_vps_backups" {
  service_name = ovh_cloud_project.catch_all.id
  region_name  = "GRA"
  name         = "restic-vps-backups-gaugendre"
}

resource "ovh_cloud_project_user_s3_policy" "restic_vps_backups_rw" {
  service_name = ovh_cloud_project_user.restic_vps_backups.service_name
  user_id      = ovh_cloud_project_user.restic_vps_backups.id
  policy = jsonencode({
    Statement = [
      {
        Sid    = "ResticVPSBackupsRW"
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:ListBucket",
        ]
        Resource = [
          "arn:aws:s3:::${ovh_cloud_project_storage.restic_vps_backups.name}",
          "arn:aws:s3:::${ovh_cloud_project_storage.restic_vps_backups.name}/*",
        ]
      },
    ]
  })
}
