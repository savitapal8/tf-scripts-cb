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
variable "skip_initial_version_creation"{
    type = bool
    description = "skip_initial_version_creation"
}
variable "import_only"{
    type = bool
    description = "import_only"
}
variable "rotation_period"{
    type = string
    description = "key rotation period in seconds"
    default = "100000s"
}
variable "labels"{
    type = map
}
