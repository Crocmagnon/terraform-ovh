variable "name" {
  type        = string
  description = "name for the service, will be used to derive the username and bucket name"
}

variable "project_id" {
  type        = string
  description = "the public cloud project id to create the resources in"
}

variable "versioning" {
  type        = bool
  default     = false
  description = "if true, will enable versioning"
}

variable "encryption" {
  type        = bool
  default     = false
  description = "if true, will enable server-side encryption"
}

variable "region" {
  type        = string
  default     = "GRA"
  description = "S3 region, defaults to GRA"
}

variable "replication_destination" {
  type = object({
    name          = string
    region        = string
    storage_class = string
  })
  default     = null
  description = "replication destination"
}

locals {
  description_name = replace(var.name, "-", " ")
  project_name     = replace(var.name, "_", "-")
}

resource "ovh_cloud_project_user" "this" {
  service_name = var.project_id
  description  = "used to access ${local.description_name}"
  role_names = [
    "objectstore_operator"
  ]
}

resource "ovh_cloud_project_user_s3_credential" "this" {
  service_name = ovh_cloud_project_user.this.service_name
  user_id      = ovh_cloud_project_user.this.id
}

resource "ovh_cloud_project_storage" "this" {
  service_name = var.project_id
  region_name  = var.region
  name         = "${local.project_name}-gaugendre"
  versioning = var.versioning ? {
    status = "enabled"
  } : null
  encryption = {
    sse_algorithm = var.encryption ? "AES256" : "plaintext"
  }
  replication = var.replication_destination == null ? null : {
    rules = [{
      id                        = "${local.project_name}-backup"
      destination               = var.replication_destination
      delete_marker_replication = "enabled"
      priority                  = 500
      status                    = "enabled"
    }]
  }
}

resource "ovh_cloud_project_user_s3_policy" "this" {
  service_name = ovh_cloud_project_user.this.service_name
  user_id      = ovh_cloud_project_user.this.id
  policy = jsonencode({
    Statement = [
      {
        Sid    = "DefaultUserRW"
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:ListBucket",
          "s3:PutObjectAcl",
        ]
        Resource = [
          "arn:aws:s3:::${ovh_cloud_project_storage.this.name}",
          "arn:aws:s3:::${ovh_cloud_project_storage.this.name}/*",
        ]
      },
    ]
  })
}

output "bucket_name" {
  value       = ovh_cloud_project_storage.this.name
  description = "Created bucket name"
}

output "bucket_region" {
  value       = ovh_cloud_project_storage.this.region_name
  description = "Created bucket region"
}