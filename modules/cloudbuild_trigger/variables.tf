variable "project_id"{
    type = string
}
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
