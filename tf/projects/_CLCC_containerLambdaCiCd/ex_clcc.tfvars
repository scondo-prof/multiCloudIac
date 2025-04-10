resourceName = "rats-in-the-kitchen"

projectName = "ratatouille"

deployedDate = "03-26-2024"

tfModule = "clcc"

CLCC_CECC_EcrRepositoryForceDelete = true

CLCC_CECC_EcrRepositoryImageScanningConfiguration = {
  scan_on_push = true
}

CLCC_CECC_CodebuildProjectArtifactsType = "NO_ARTIFACTS"

CLCC_CECC_CodebuildProjectEnvironmentComputeType = "BUILD_GENERAL1_SMALL"

awsAccountId = "708508995810"

CLCC_CECC_CodebuildProjectEnvironmentImage = "aws/codebuild/amazonlinux-x86_64-standard:5.0"

CLCC_CECC_CodebuildProjectEnvironmentType = "LINUX_CONTAINER"

CLCC_CECC_CodebuildProjectSourceBuildspec = "tf/utils/example_aws_lambda_container/buildspec.yaml"

CLCC_CECC_CodebuildProjectSourceGitCloneDepth = 1

CLCC_CECC_CodebuildProjectSourceLocation = "https://github.com/scondo-prof/multiCloudIac"

CLCC_CECC_CodebuildProjectSourceType = "GITHUB"

CLCC_CECC_CodebuildCredentialsAuthType = "PERSONAL_ACCESS_TOKEN"

CLCC_CECC_CodebuildCredentialsServerType = "GITHUB"

CLCC_CECC_CodebuildCredentialsToken = "fill"

CLCC_CECC_CodebuildWebhookBuildType = "BUILD"

CLCC_CECC_CodebuildWebhookFilterGroup = {
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

CLCC_CECC_CodebuildRoleAssumeRolePolicy = [{
  Action = ["sts:AssumeRole"]
  Effect = "Allow"
  Principal = {
    "Service" = ["codebuild.amazonaws.com"]
  }
}]

CLCC_CECC_CodebuildRoleDescription = "i smell a rat"

CLCC_LFWLGSAR_LambdaFunctionArchitectures = ["x86_64"]

CLCC_LFWLGSAR_LambdaFunctionPackageType = "Image"

CLCC_LFWLGSAR_LambdaFunctionTimeout = 8

CLCC_LFWLGSAR_LambdaSecretRecoveryWindowInDays = 0

CLCC_LFWLGSAR_LambdaSecretVersionSecretString = {
  "gustave"  = "the chunky prince",
  "nose man" = "may have to sleep with the fishes"
}