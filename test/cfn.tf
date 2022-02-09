resource "aws_cloudformation_stack" "network" {
  name = "Athena-Stack"

  
  template_url = "https://billingcredeatest.s3.amazonaws.com/CrederaBilling/BillingReport/crawler-cfn.yml"
  disable_rollback = true
  capabilities = ["CAPABILITY_IAM"]
  
 
}
