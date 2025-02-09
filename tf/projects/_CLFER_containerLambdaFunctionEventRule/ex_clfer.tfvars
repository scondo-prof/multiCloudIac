resourceName = "mild-buffalo-sauce"

projectName = "semi-spice"

deployedDate = "12-09-2024"

CLFER_CLCC_CECC_EcrRepositoryForceDelete = true

CLFER_CLCC_CECC_EcrRepositoryImageScanningConfiguration = {
  scan_on_push = true
}

CLFER_CLCC_CECC_CodebuildProjectArtifactsType = "NO_ARTIFACTS"

CLFER_CLCC_CECC_CodebuildProjectEnvironmentComputeType = "BUILD_GENERAL1_SMALL"

awsAccountId = "708508995810"

CLFER_CLCC_CECC_CodebuildProjectEnvironmentImage = "aws/codebuild/amazonlinux-x86_64-standard:5.0"

CLFER_CLCC_CECC_CodebuildProjectEnvironmentType = "LINUX_CONTAINER"

CLFER_CLCC_CECC_CodebuildProjectSourceBuildspec = "tf/projects/_CLFER_containerLambdaFunctionEventRule/utils/buildspec.yaml"

CLFER_CLCC_CECC_CodebuildProjectSourceGitCloneDepth = 1

CLFER_CLCC_CECC_CodebuildProjectSourceLocation = "https://github.com/Bear-Cognition/multiCloudIac"

CLFER_CLCC_CECC_CodebuildProjectSourceType = "GITHUB"

CLFER_CLCC_CECC_CredentialsAuthType = "PERSONAL_ACCESS_TOKEN"

CLFER_CLCC_CECC_CredentialsServerType = "GITHUB"

CLFER_CLCC_CECC_CredentialsToken = "fill"

CLFER_CLCC_CECC_WebhookBuildType = "BUILD"

CLFER_CLCC_CECC_WebhookFilterGroup = {
  filter = {
    event_filter = {
      type    = "EVENT"
      pattern = "PUSH"
    }
    ref_filter = {
      type    = "HEAD_REF"
      pattern = "refs/heads/dev/CLCCCModule"
    }
  }
}

CLFER_CLCC_CECC_CodebuildRoleAssumeRolePolicy = [{
  Action = ["sts:AssumeRole"]
  Effect = "Allow"
  Principal = {
    "Service" = ["codebuild.amazonaws.com"]
  }
}]

CLFER_CLCC_CECC_CodebuildRoleDescription = "no milk needed"

CLFER_CLCC_LFWLGSAR_LambdaFunctionArchitectures = ["x86_64"]

CLFER_CLCC_LFWLGSAR_LambdaFunctionPackageType = "Image"

CLFER_CLCC_LFWLGSAR_LambdaFunctionTimeout = 8

CLFER_CLCC_LFWLGSAR_SecretRecoveryWindowInDays = 0

CLFER_CLCC_LFWLGSAR_SecretVersionSecretString = {
  "crem"  = "good add",
  "spyce" = "good stuff"
}

CLFER_EventRuleScheduleExpression = "cron(* * * * ? *)"

CLFER_LambdaPermissionAction = "lambda:InvokeFunction"

CLFER_LambdaPermissionPrincipal = "events.amazonaws.com"