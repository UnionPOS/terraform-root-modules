terraform {
  required_version = ">= 0.11.2"

  backend "s3" {}
}

provider "aws" {
  assume_role {
    role_arn = "${var.aws_assume_role_arn}"
  }
}

data "terraform_remote_state" "accounts" {
  backend = "s3"

  config {
    bucket = "${var.namespace}-${var.stage}-terraform-state"
    key    = "accounts/terraform.tfstate"
  }
}

locals {}

# NOTE: Organization can only be created from the master account
# https://www.terraform.io/docs/providers/aws/r/organizations_organization.html

resource "aws_organizations_organization" "default" {
  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
  ]
  enabled_policy_types = [
    "SERVICE_CONTROL_POLICY"
  ]
  feature_set = "${var.organization_feature_set}"
}
