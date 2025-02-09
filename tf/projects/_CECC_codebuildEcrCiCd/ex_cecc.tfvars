resourceName = "eating-in-the-pig-troff"

projectName = "fowl"

deployedDate = "12-05-2024"

CECC_EcrRepositoryForceDelete = true

CECC_EcrRepositoryImageScanningConfiguration = {
  scan_on_push = true
}

CECC_CodebuildProjectArtifactsType = "NO_ARTIFACTS"

CECC_CodebuildProjectEnvironmentComputeType = "BUILD_GENERAL1_SMALL"

awsAccountId = "708508995810"

CECC_CodebuildProjectEnvironmentImage = "aws/codebuild/amazonlinux-x86_64-standard:5.0"

CECC_CodebuildProjectEnvironmentType = "LINUX_CONTAINER"

CECC_CodebuildProjectSourceBuildspec = "tf/projects/_CECC_codebuildEcrCiCd/utils/buildspec.yaml"

CECC_CodebuildProjectSourceGitCloneDepth = 1

CECC_CodebuildProjectSourceLocation = "https://github.com/Bear-Cognition/multiCloudIac"

CECC_CodebuildProjectSourceType = "GITHUB"

CECC_CredentialsAuthType = "PERSONAL_ACCESS_TOKEN"

CECC_CredentialsServerType = "GITHUB"

CECC_CredentialsToken = "fill"

CECC_WebhookBuildType = "BUILD"

CECC_WebhookFilterGroup = {
  filter = {
    event_filter = {
      type    = "EVENT"
      pattern = "PUSH"
    }
    ref_filter = {
      type    = "HEAD_REF"
      pattern = "refs/heads/dev/LFWLGSARModule"
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

CECC_CodebuildRoleDescription = "slide in my muck"