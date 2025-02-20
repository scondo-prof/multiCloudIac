bucketNotificationBucket = "test-for-nonsense"

bucketNotificationQueue = {
    queue_arn     = "arn:aws:sqs:us-east-1:708508995810:test20250220202732058300000002"
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = "HP/"
    filter_suffix = ".txt"
  }