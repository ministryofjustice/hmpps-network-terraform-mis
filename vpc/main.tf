terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}

provider "aws" {
  region  = "${var.region}"
  version = "~> 1.16"
}

#-------------------------------------------------------------
### Getting the current running account id
#-------------------------------------------------------------
data "aws_caller_identity" "current" {}

locals {
  route53_internal_domain = "${var.project_name}-${var.environment_type}.internal"
  public_domain           = "${var.environment_type}.${var.project_name_abbreviated}.${var.route53_domain_private}"
}
