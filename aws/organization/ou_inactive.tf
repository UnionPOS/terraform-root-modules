#
# https://www.terraform.io/docs/providers/aws/r/organizations_organizational_unit.html
# https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html
#

resource "aws_organizations_organizational_unit" "inactive" {
  name      = "inactive"
  parent_id = "${aws_organizations_organization.default.roots.0.id}"
}

# attach policies which will affect all accounts in the inactive org unit

# deny access to all aws actions
resource "aws_organizations_policy_attachment" "inactive_deny_all" {
  policy_id = "${aws_organizations_policy.aws_deny_all.id}"
  target_id = "${aws_organizations_organizational_unit.inactive.id}"
}
