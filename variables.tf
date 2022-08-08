variable "access_token" {
    type = string
    sensitive = true
}
variable "project_id"{
    type = string
}
variable "keyring_name" {
 description = "KMS Keyring used for encryption keys"
 type        = string
}
variable "keyring_location"{
    type = string
}
variable "key_name"{
    type = string
}
variable "gcs_bucket_name"{
    type = string
}
variable "bucket_location"{
    type = string
}
variable "key_IAM_users"{
    type = list(string)
}
variable "key_iam_role"{
    type = string
}

#worker pool variables
variable "worker_pool_name"{
    type = string
}
variable "worker_pool_location"{
    type = string
}
variable "worker_disk_size"{
    type = number
}
variable "machine_type"{
    type = string
}
variable "no_external_ip"{
    type = bool
}

#cloud build trigger
variable "custom-sa_name"{
    type = string
}
variable "cloudbuild_sa_roles"{
    type = list(string)
}
variable "organization_owner"{
    type = string
}
variable "repo_name"{
    type = string
}
variable "branch_name"{
    type = string
}
variable "invert_regex"{
    type = bool
}
variable "file_name"{
    type = string
    description = "Path, from the source root, to a file whose contents is used for the template"
}
variable "trigger_name"{
    type = string
}
variable "labels"{
    type = map
}
