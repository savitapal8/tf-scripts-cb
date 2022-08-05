#cloud build worker pool
module "google-cloud-build-worker-pool"{
    source = "./modules/worker_pool"
    worker_pool_name = var.worker_pool_name
    worker_pool_location = var.worker_pool_location
    worker_disk_size = var.worker_disk_size
    machine_type = var.machine_type
    no_external_ip = var.no_external_ip
}

#GCS bucket to store build logs
module "gcs-bucket"{
    source = "./modules/gcs_bucket"
    keyring_name = var.keyring_name
    project_id = var.project_id
    keyring_location = var.keyring_location
    key_name = var.key_name
    gcs_bucket_name = var.gcs_bucket_name
    bucket_location = var.bucket_location
    key_IAM_users = var.key_IAM_users
    key_iam_role = var.key_iam_role
}

#cloud build trigger
module "build-trigger"{
    source = "./modules/cloudbuild_trigger"
    trigger_name = var.trigger_name
    project_id = var.project_id
    custom-sa_name = var.custom-sa_name
    cloudbuild_sa_roles = var.cloudbuild_sa_roles
    organization_owner = var.organization_owner
    repo_name = var.repo_name
    branch_name = var.branch_name
    invert_regex = var.invert_regex
    file_name = var.file_name
}
