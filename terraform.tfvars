#bucket and KMS key variables
project_id = "modular-scout-345114"
keyring_name = "wf-us-prod-kms-app02-u0002"
keyring_location = "us-central1"
key_name = "wf-us-prod-kms-app02-u0003"
gcs_bucket_name = "wf-us-prod-gcs-app02-u0001"
bucket_location = "us-central1"
key_IAM_users = [
      "serviceAccount:service-1080178441487@modular-scout-345114.iam.gserviceaccount.com",
    ]
key_iam_role = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
skip_initial_version_creation = true
import_only = true
rotation_period = "7776000s"

#worker pool variables
worker_pool_name = "wf-us-prod-cb-app01-u0001"
worker_pool_location = "us-central1"
worker_disk_size = 100
machine_type = "e2-standard-4"
no_external_ip = true

#build trigger variables
trigger_name = "wf-us-prod-cb-app01-u0002"
custom-sa_name = "custom-sa-12"
cloudbuild_sa_roles = [
    "roles/iam.serviceAccountUser",
    "roles/logging.logWriter",
    "roles/storage.admin",  
]
organization_owner = "pratikkhedekar42"
repo_name = "cloudbuildtest"
branch_name = "main"
invert_regex = false
file_name = "cloudbuild.yaml"
labels = { 
      gcp_region = "us",
      owner = "hybridenv",
      application_division = "pci",
      application_name = "demo",
      application_role = "app",
      environment = "prod",
      au = "0223092",
      created = "20221018", 
}
