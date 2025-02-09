resourceName = "rats-in-the-kitchen"

projectName = "ratatouille"

deployedDate = "01-02-2024"

CLCC_CECC_EcrRepositoryForceDelete = true

CLCC_CECC_EcrRepositoryImageScanningConfiguration = {
  scan_on_push = true
}

CLCC_CECC_CodebuildProjectArtifactsType = "NO_ARTIFACTS"

CLCC_CECC_CodebuildProjectEnvironmentComputeType = "BUILD_GENERAL1_SMALL"

awsAccountId = "708508995810"

CLCC_CECC_CodebuildProjectEnvironmentImage = "aws/codebuild/amazonlinux-x86_64-standard:5.0"

CLCC_CECC_CodebuildProjectEnvironmentType = "LINUX_CONTAINER"

CLCC_CECC_CodebuildProjectSourceBuildspec = "tf/projects/_CLCC_containerLambdaCiCd/utils/buildspec.yaml"

CLCC_CECC_CodebuildProjectSourceGitCloneDepth = 1

CLCC_CECC_CodebuildProjectSourceLocation = "https://github.com/Bear-Cognition/multiCloudIac"

CLCC_CECC_CodebuildProjectSourceType = "GITHUB"

CLCC_CECC_CredentialsAuthType = "PERSONAL_ACCESS_TOKEN"

CLCC_CECC_CredentialsServerType = "GITHUB"

CLCC_CECC_CredentialsToken = "fill"

CLCC_CECC_WebhookBuildType = "BUILD"

CLCC_CECC_WebhookFilterGroup = {
  filter = {
    event_filter = {
      type    = "EVENT"
      pattern = "PUSH"
    }
    ref_filter = {
      type    = "HEAD_REF"
      pattern = "refs/heads/dev/AGRAMVKUPModule"
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

CLCC_LFWLGSAR_SecretRecoveryWindowInDays = 0

CLCC_LFWLGSAR_SecretVersionSecretString = {
    "gustave" = "the chunky prince",
    "nose man" = "may have to sleep with the fishes"
}