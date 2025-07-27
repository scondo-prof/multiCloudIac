projectName = "test"

deployedDate = "02-20-2025"

tfModule = "generic-queue"

queueNamePrefix = "test"

queuePolicyDocumentStatements = [{
  Action = [ "sqs:SendMessage" ]
  Condition = {
    "ArnEquals" = {
      "aws:SourceArn" = "arn:aws:s3:::test-for-nonsense"
    }
  }
  Effect = "Allow"
  Principal = {
    "Service" = [ "s3.amazonaws.com" ]
  }
  Resource = [ "arn:aws:sqs:us-east-1:708508995810:test20250220202732058300000002" ]
  Sid = "value"
}]

queueRedrivePolicy = {
    deadLetterTargetArn = "arn:aws:sqs:us-east-1:249689120119:example-deadletter"
    maxReceiveCount     = 2
  }

queueVisibilityTimeoutSeconds = 30