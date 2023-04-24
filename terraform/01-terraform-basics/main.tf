terraform{
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.63.0"
    }
  }
}
  provider "aws" {
    region = "us-east-1"
  }
  resource "aws_s3_bucket" "my_S3_Bucket" {
    bucket = "my-s3-bucket-in28minutes-rali-001"
   }
   resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_updated"
     
   }
   resource "aws_s3_bucket_versioning" "versioning_example"{
    bucket = aws_s3_bucket.my_S3_Bucket.id
    versioning_configuration {
      status = "Enabled"
    }
   }
   output "my_sc_bucket_versioning" {
    value = aws_s3_bucket.my_S3_Bucket.versioning[0].enabled
   }

   output "my_s3_bucket_complete_details" {
    value = aws_s3_bucket.my_S3_Bucket
   }
   
   output "my_s3_iam_user_complete_details" {
    value = aws_iam_user.my_iam_user
   }