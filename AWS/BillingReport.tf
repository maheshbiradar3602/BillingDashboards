resource "aws_cur_report_definition" "BillingReporttf" {
  report_name                = "BillingReporttf"
  time_unit                  = "DAILY"
  format                     = "Parquet"
  compression                = "Parquet"
  additional_schema_elements = ["RESOURCES"]
  s3_bucket                  = "billingcrederatesttf"
  s3_region                  = "us-east-1"
  additional_artifacts       = ["ATHENA"]
  s3_prefix         = "CrederaBillingtf/BillingReport"
  report_versioning = "OVERWRITE_REPORT"

   depends_on = [aws_s3_bucket.billingcrederatesttf]
}