resourceName = "mild-buffalo-sauce"

projectName = "semi-spice"

deployedDate = "2025-03-28"

tfModule = "clfer"

CLFER_CLCC_CECC_EcrRepositoryForceDelete = true

CLFER_CLCC_CECC_EcrRepositoryImageScanningConfiguration = {
  scan_on_push = true
}

CLFER_CLCC_CECC_CodebuildProjectArtifactsType = "NO_ARTIFACTS"

CLFER_CLCC_CECC_CodebuildProjectEnvironmentComputeType = "BUILD_GENERAL1_SMALL"

awsAccountId = "708508995810"

CLFER_CLCC_CECC_CodebuildProjectEnvironmentImage = "aws/codebuild/amazonlinux-x86_64-standard:5.0"

CLFER_CLCC_CECC_CodebuildProjectEnvironmentType = "LINUX_CONTAINER"

CLFER_CLCC_CECC_CodebuildProjectSourceBuildspec = "tf/utils/example_aws_lambda_container/buildspec.yaml"

CLFER_CLCC_CECC_CodebuildProjectSourceGitCloneDepth = 1

CLFER_CLCC_CECC_CodebuildProjectSourceLocation = "https://github.com/scondo-prof/multiCloudIac"

CLFER_CLCC_CECC_CodebuildProjectSourceType = "GITHUB"

CLFER_CLCC_CECC_CodebuildCredentialsAuthType = "PERSONAL_ACCESS_TOKEN"

CLFER_CLCC_CECC_CodebuildCredentialsServerType = "GITHUB"

CLFER_CLCC_CECC_CodebuildCredentialsToken = "fill"

CLFER_CLCC_CECC_CodebuildWebhookBuildType = "BUILD"

CLFER_CLCC_CECC_CodebuildWebhookFilterGroup = {
  filter = {
    event_filter = {
      type    = "EVENT"
      pattern = "PUSH"
    }
    ref_filter = {
      type    = "HEAD_REF"
      pattern = "dev/integrateTfModuleTag"
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

CLFER_CLCC_LFWLGSAR_LambdaSecretRecoveryWindowInDays = 0

CLFER_CLCC_LFWLGSAR_LambdaSecretVersionSecretString = {
  "crem"  = "good add",
  "spyce" = "good stuff"
}

CLFER_EventRuleLambdaScheduleExpression = "cron(* * * * ? *)"

CLFER_LambdaPermissionEventRuleAction = "lambda:InvokeFunction"

CLFER_LambdaPermissionEventRulePrincipal = "events.amazonaws.com"