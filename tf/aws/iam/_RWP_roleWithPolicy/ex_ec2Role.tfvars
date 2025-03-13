resourceName = "test-my-balls-bozo"

projectName = "test-my-balls-bozo"

deployedDate = "01-27-2025"

RWP_IamRoleAssumeRolePolicy = [
  {
    Effect = "Allow",
    Principal = {
      Service = ["ec2.amazonaws.com"]
    },
    Action = ["sts:AssumeRole"]
  }
]

RWP_IamRoleDescription = "just putting flow logs"

RWP_IamPolicyDocumentStatements = [
  {
    Effect = "Allow",
    Action = [
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]
    Resource = ["arn:aws:logs:us-east-1:708508995810:log-group:/aws/lambda/daddy_mood:*"]
  }
]