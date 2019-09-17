resource "aws_organizations_policy" "aws_allow_all" {
  name        = "FullAccess"
  description = "Allows access to every operation"
  content     = "${file("policies/aws_allow_all.json")}"
}

resource "aws_organizations_policy" "aws_deny_all" {
  name        = "NoAccess"
  description = "Deny access to every operation"
  content     = "${file("policies/aws_deny_all.json")}"
}

resource "aws_organizations_policy" "protect_cloudtrail" {
  name        = "ProtectCloudTrail"
  description = "Prevent modification of cloudtrail configuration"
  content     = "${file("policies/cloudtrail_immutable.json")}"
}

resource "aws_organizations_policy" "protect_cloudwatch" {
  name        = "ProtectCloudWatch"
  description = "Prevent modification of cloudwatch configuration"
  content     = "${file("policies/cloudwatch_immutable.json")}"
}

resource "aws_organizations_policy" "protect_config" {
  name        = "ProtectConfig"
  description = "Prevent modification of config configuration"
  content     = "${file("policies/config_immutable.json")}"
}

resource "aws_organizations_policy" "protect_ds" {
  name        = "ProtectDirectoryService"
  description = "Prevent modification of Directory Service configuration"
  content     = "${file("policies/ds_denied.json")}"
}

resource "aws_organizations_policy" "protect_ec2" {
  name        = "ProtectEC2"
  description = "Prevent unapproved EC2 actions"
  content     = "${file("policies/ec2_regional.json")}"
}

resource "aws_organizations_policy" "protect_iam" {
  name        = "ProtectIAM"
  description = "Prevent modification of IAM configuration"
  content     = "${file("policies/iam_create_user.json")}"
}

resource "aws_organizations_policy" "protect_lambda" {
  name        = "ProtectLambda"
  description = "Prevent modification of Lambda configuration"
  content     = "${file("policies/lambda_immutable.json")}"
}

resource "aws_organizations_policy" "protect_regions" {
  name        = "ProtectRegions"
  description = "Prevent actions in unauthorized regions"
  content     = "${file("policies/aws_regional.json")}"
}

resource "aws_organizations_policy" "protect_s3" {
  name        = "ProtectS3"
  description = "Prevent changes to bucket policies"
  content     = "${file("policies/s3_immutable.json")}"
}

resource "aws_organizations_policy" "protect_vpc" {
  name        = "ProtectVPC"
  description = "Prevent modification of vpc configuration"
  content     = "${file("policies/vpc_immutable.json")}"
}

