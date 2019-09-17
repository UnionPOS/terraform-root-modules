#
# https://www.terraform.io/docs/providers/aws/r/organizations_organizational_unit.html
# https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html
# https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html
#

resource "aws_organizations_organizational_unit" "pos" {
  name      = "pos"
  parent_id = "${aws_organizations_organization.default.roots.0.id}"
}

# attach policies which will affect all accounts in the pos org unit
