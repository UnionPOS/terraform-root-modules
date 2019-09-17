#
# https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html
#

# attach policies which only affect the development account 

# resource "aws_organizations_policy_attachment" "dev_allow_all" {
#   policy_id = "${aws_organizations_policy.allow_all.id}"
#   target_id = "${data.terraform_remote_state.accounts.dev_account_id}"
# }
