output "s3BucketArn" {
  value = aws_s3_bucket.s3Bucket.arn
}

output "s3BucketName" {
  value = aws_s3_bucket.s3Bucket.bucket
}