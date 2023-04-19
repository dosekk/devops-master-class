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
  resource "aws_s3_bucket" "my-S3-Bucket" {
    bucket = "my-S3-Bucket-in28minutes-RaLi-001"    
  }