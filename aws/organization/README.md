# Service Control Policies

- [ ] prevent stopping cloudtrail
- [ ] prevent creating other users
- [ ] prevent creating directory services
- [ ] prevent disabling cloudwatch alarms
- [ ] prevent deletion of flow logs
- [ ] prevent creation of vpc connections
- [ ] prevent disabling of config
- [ ] prevent changing s3 bucket policies
- [ ] make lambda functions immutable
- [ ] prevent creation of s3 buckets in other regions
- [ ] prevent ec2 actions in other regions

SCP can be attached to

- account
- organizational unit

## references

https://www.terraform.io/docs/providers/aws/r/organizations_account.html
https://www.terraform.io/docs/providers/aws/r/organizations_organization.html
https://www.terraform.io/docs/providers/aws/r/organizations_organizational_unit.html
https://www.terraform.io/docs/providers/aws/r/organizations_policy.html
https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html
