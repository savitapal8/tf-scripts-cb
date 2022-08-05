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
