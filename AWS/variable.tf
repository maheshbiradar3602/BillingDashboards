variable "report_name" {
    type = string
    description = "Name of the Billing Report"
}
variable "schedule_type" {
    type = string
    description = "Schedule daily monthly or hourly"
}
variable "format" {
    type = string
    description = "format of data"
}
variable "compression" {
    type = string
    description = "compression"
}
variable "additional_schema_elements" {
    type = string
    description = "additional attribute"
}
variable "s3_bucket_name" {
    type = string
    description = "Name of bucket to store the billing details"
}
variable "s3_region" {
    type = string
    description = "region of bucket"
}
variable "additional_artifacts" {
    type = string
    description = "ATHENA"
}
variable "s3_prefix" {
    type = string
    description = "prefix to be created in folder"
}
variable "report_versioning" {
    type = string
    description = "report_versioning"
}