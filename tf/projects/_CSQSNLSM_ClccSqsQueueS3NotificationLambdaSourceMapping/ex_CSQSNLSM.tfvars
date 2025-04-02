resourceName = "get-in-me-queue"

projectName = "unga-bunga"

deployedDate = "2025-04-02"

tfModule = "csqsnlsm"

CSQSNLSM_CLCC_CECC_EcrRepositoryForceDelete = true

CSQSNLSM_CLCC_CECC_EcrRepositoryImageScanningConfiguration = {
  scan_on_push = true
}

CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsType = "NO_ARTIFACTS"

CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentComputeType = "BUILD_GENERAL1_SMALL"

awsAccountId = "708508995810"

CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentImage = "aws/codebuild/amazonlinux-x86_64-standard:5.0"

CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentType = "LINUX_CONTAINER"

CSQSNLSM_CLCC_CECC_CodebuildProjectSourceBuildspec = "tf/utils/example_aws_lambda_container/buildspec.yaml"

CSQSNLSM_CLCC_CECC_CodebuildProjectSourceGitCloneDepth = 1

CSQSNLSM_CLCC_CECC_CodebuildProjectSourceLocation = "https://github.com/scondo-prof/multiCloudIac"

CSQSNLSM_CLCC_CECC_CodebuildProjectSourceType = "GITHUB"

CSQSNLSM_CLCC_CECC_CodebuildCredentialsAuthType = "PERSONAL_ACCESS_TOKEN"

CSQSNLSM_CLCC_CECC_CodebuildCredentialsServerType = "GITHUB"

CSQSNLSM_CLCC_CECC_CodebuildCredentialsToken = "fill"

CSQSNLSM_CLCC_CECC_CodebuildWebhookBuildType = "BUILD"

CSQSNLSM_CLCC_CECC_CodebuildWebhookFilterGroup = {
  filter = {
    event_filter = {
      type    = "EVENT"
      pattern = "PUSH"
    }
    ref_filter = {
      type    = "HEAD_REF"
      pattern = "refs/heads/dev/integrateTfModuleTag"
    }
  }
}

CSQSNLSM_CLCC_CECC_CodebuildRoleAssumeRolePolicy = [{
  Action = ["sts:AssumeRole"]
  Effect = "Allow"
  Principal = {
    "Service" = ["codebuild.amazonaws.com"]
  }
}]

CSQSNLSM_CLCC_CECC_CodebuildRoleDescription = "been in the queue all day m8"

CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionArchitectures = ["x86_64"]

CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionPackageType = "Image"

CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionTimeout = 11

CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretRecoveryWindowInDays = 0

CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretVersionSecretString = {
  "wow-how-long" = "a-valid-question-ole-chap"
  "i-guess"      = "long-enough"
}

CSQSNLSM_QueuePolicyS3AccessBucketArn = "arn:aws:s3:::test-for-nonsense"

CSQSNLSM_BucketNotificationToQueueBucket = "test-for-nonsense"

CSQSNLSM_BucketNotificationToQueueQueue = {
  filter_prefix = "HP/"
  filter_suffix = ".txt"
}