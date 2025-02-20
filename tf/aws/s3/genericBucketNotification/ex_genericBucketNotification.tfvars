bucketNotificationBucket = "test-for-nonsense"

bucketNotificationLambdaFunction = {
    events = [ "s3:ObjectCreated:*" ]
    filter_prefix = "HP/"
    lambda_function_arn = "arn:aws:lambda:us-east-1:708508995810:function:test_sqs_sappo"
    filter_suffix = ".txt"
}