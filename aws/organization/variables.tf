variable "aws_assume_role_arn" {
  type = "string"
}

variable "namespace" {
  type        = "string"
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  type        = "string"
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "name" {
  type        = "string"
  description = "Application or solution name (e.g. `app`)"
  default     = "ecs"
}

variable "organization_feature_set" {
  type        = "string"
  default     = "ALL"
  description = "`ALL` (default) or `CONSOLIDATED_BILLING`"
}
