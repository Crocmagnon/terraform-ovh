import {
  to = ovh_cloud_project.catch_all
  id = "7fe7396bf3c74028988a1fc4218d8fef"
}

resource "ovh_cloud_project" "catch_all" {
  description    = "Catch all project"
  ovh_subsidiary = null
}

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
