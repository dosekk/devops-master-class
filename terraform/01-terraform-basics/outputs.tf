   output "my_sc_bucket_versioning" {
    value = aws_s3_bucket.my_S3_Bucket.versioning[0].enabled
   }

   output "my_s3_bucket_complete_details" {
    value = aws_s3_bucket.my_S3_Bucket
   }
   
   output "my_s3_iam_user_complete_details" {
    value = aws_iam_user.my_iam_user
   }