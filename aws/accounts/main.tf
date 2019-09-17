terraform {
  required_version = ">= 0.11.2"

  backend "s3" {}
}

provider "aws" {
  assume_role {
    role_arn = "${var.aws_assume_role_arn}"
  }
}

data "terraform_remote_state" "organization" {
  backend = "s3"

  config {
    bucket = "${var.namespace}-root-terraform-state"
    key    = "organization/terraform.tfstate"
  }
}
