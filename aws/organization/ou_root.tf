#
# https://www.terraform.io/docs/providers/aws/r/organizations_organizational_unit.html
# https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html
#

# attach policies which affect all accounts

# it's not clear how we get a pointer to the root OU to attach policies
# the root OU by default has attached FullAWSAccess policy
