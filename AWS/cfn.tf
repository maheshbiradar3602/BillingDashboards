resource "aws_cloudformation_stack" "network" {
  name = "Athena-Stack"
  template_url = "https://billingcrederatesttf.s3.amazonaws.com/CrederaBillingtf/BillingReport/BillingReporttf/crawler-cfn.yml"
  disable_rollback = true
  capabilities = ["CAPABILITY_IAM"]
  
   depends_on = [aws_s3_bucket.billingcrederatesttf]
}

/*
resource "aws_cloudformation_stack" "network" {
  name = "Athena-Stack"
  template_url = "https://billingcrederatesttf.s3.amazonaws.com/CrederaBillingtf/BillingReport/BillingReporttf/crawler-cfn.yml"
  disable_rollback = true
  capabilities = ["CAPABILITY_IAM"]
  
   depends_on = [aws_s3_bucket.billingcrederatesttf]
}

*/