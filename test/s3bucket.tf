resource "aws_s3_bucket" "billingcrederatesttf" {
  bucket = "billingcrederatesttf" // bucket = var.bucket_name
  acl    = "private"

  tags = {
    created_by = "mahesh"
    Environment = "Dev"
  }
   # Creating a bucket policy that allows put requests from the billing service account and access from the bucket_user IAM role (used by GCP)
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
  {
    "Effect": "Allow",
    "Principal": {
      "Service": "billingreports.amazonaws.com"
    },
    "Action": [
      "s3:GetBucketAcl",
      "s3:GetBucketPolicy"
    ],
    "Resource": "arn:aws:s3:::billingcrederatesttf"
  },
  {
    "Effect": "Allow",
    "Principal": {
      "Service": "billingreports.amazonaws.com"
    },
    "Action": "s3:PutObject",
    "Resource": "arn:aws:s3:::billingcrederatesttf/*"
  }
  
  ]
}
POLICY

}