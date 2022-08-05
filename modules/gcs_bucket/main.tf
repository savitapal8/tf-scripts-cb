data "google_project" "project" {
  project_id     = var.project_id
}
#keyring creation
resource "google_kms_key_ring" "keyring" {
  name     = var.keyring_name
  location = var.keyring_location
}

#kms key
resource "google_kms_crypto_key" "secrets" {
 name     = var.key_name
 key_ring = google_kms_key_ring.keyring.id
}

#crypto-key-IAM Policy
data "google_iam_policy" "adminn" {
  binding {
    role = var.key_iam_role
    members = var.key_IAM_users
  }
}

resource "google_kms_crypto_key_iam_policy" "crypto_key" {
  crypto_key_id = google_kms_crypto_key.secrets.id
  policy_data = data.google_iam_policy.adminn.policy_data
}

resource "google_storage_bucket" "build-logs" {
  name          = var.gcs_bucket_name
  project       = data.google_project.project.project_id
  location      = var.bucket_location
  force_destroy = false
  encryption {
    default_kms_key_name = google_kms_crypto_key.secrets.id
  }
}

