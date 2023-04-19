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