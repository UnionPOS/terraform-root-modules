#
# https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html
#

# attach policies which only affect the production account 

# resource "aws_organizations_policy_attachment" "prod_allow_all" {
#   policy_id = "${aws_organizations_policy.allow_all.id}"
#   target_id = "${data.terraform_remote_state.accounts.prod_account_id}"
# }

resource types currently utilized in prod

Cloudformation
CloudFront
CloudWatch
DynamoDB
EC2
Elasticache
ElasticLoadBalancer
Elasticsearch
Events
KMS
Lambda
RDS
Route53
S3
SSM
StepFunctions
