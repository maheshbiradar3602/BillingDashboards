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

/*
resource "aws_cur_report_definition" "BillingReporttf" {
  report_name                = var.report_name
  time_unit                  = var.schedule_type
  format                     = var.format
  compression                = var.compression
  additional_schema_elements = [var.additional_schema_elements]
  s3_bucket                  = var.s3_bucket_name
  s3_region                  = var.s3_region
  additional_artifacts       = [var.additional_artifacts]
  s3_prefix         = var.s3_prefix
  report_versioning = var.report_versioning

   depends_on = [aws_s3_bucket.billingcrederatesttf]
}



*/