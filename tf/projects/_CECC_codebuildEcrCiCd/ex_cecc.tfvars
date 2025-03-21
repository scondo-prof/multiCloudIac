resourceName = "rats-in-the-kitchen"

projectName = "ratatouille"

deployedDate = "03-21-2024"

tfModule = "clcc"

CECC_EcrRepositoryForceDelete = true

CECC_EcrRepositoryImageScanningConfiguration = {
  scan_on_push = true
}

CECC_CodebuildProjectArtifactsType = "NO_ARTIFACTS"

CECC_CodebuildProjectEnvironmentComputeType = "BUILD_GENERAL1_SMALL"

awsAccountId = "708508995810"

CECC_CodebuildProjectEnvironmentImage = "aws/codebuild/amazonlinux-x86_64-standard:5.0"

CECC_CodebuildProjectEnvironmentType = "LINUX_CONTAINER"

CECC_CodebuildProjectSourceBuildspec = "tf/utils/example_aws_lambda_container/buildspec.yaml"

CECC_CodebuildProjectSourceGitCloneDepth = 1

CECC_CodebuildProjectSourceLocation = "https://github.com/scondo-prof/multiCloudIac"

CECC_CodebuildProjectSourceType = "GITHUB"

CECC_CodebuildCredentialsAuthType = "PERSONAL_ACCESS_TOKEN"

CECC_CodebuildCredentialsServerType = "GITHUB"

CECC_CodebuildCredentialsToken = "fill"

CECC_CodebuildWebhookBuildType = "BUILD"

CECC_CodebuildWebhookFilterGroup = {
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

CECC_CodebuildRoleAssumeRolePolicy = [{
  Action = ["sts:AssumeRole"]
  Effect = "Allow"
  Principal = {
    "Service" = ["codebuild.amazonaws.com"]
  }
}]

CECC_CodebuildRoleDescription = "i smell a rat"