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