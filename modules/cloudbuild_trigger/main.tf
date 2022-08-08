data "google_project" "project" {
 project_id     = var.project_id
}

# User-managed Service Account
resource "google_service_account" "custom-sa" {
 account_id   = var.custom-sa_name
 display_name = "Cloud build User Managed Service Account"
 project      = data.google_project.project.project_id
}

locals {
  cloudbuild_sa_roles = var.cloudbuild_sa_roles
}

resource "google_project_iam_member" "build-roles" {
  for_each = toset(local.cloudbuild_sa_roles)
  project  = data.google_project.project.project_id
  role     = each.value
  member   = "serviceAccount:${google_service_account.custom-sa.email}"
}

resource "google_cloudbuild_trigger" "service-account-trigger" {
  name = var.trigger_name  
  depends_on = [google_project_iam_member.build-roles,]  
  service_account = google_service_account.custom-sa.id
  filename        = var.file_name
  github {
    owner = var.organization_owner
    name  = var.repo_name
    push {
      branch = var.branch_name
      invert_regex = var.invert_regex
    }
  }
}
