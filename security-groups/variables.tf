variable "environment_name" {
  type = "string"
}

variable "region" {
  description = "The AWS region."
}

variable "remote_state_bucket_name" {
  description = "Terraform remote state bucket name"
}

variable "environment_identifier" {
  description = "resource label or name"
}

# MIS vars
variable "mis_app_name" {
  description = "label for spg"
  default     = "mis"
}
