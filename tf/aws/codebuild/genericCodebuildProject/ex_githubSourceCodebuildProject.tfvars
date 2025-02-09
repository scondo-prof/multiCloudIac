codebuildProjectArtifactsType = "NO_ARTIFACTS"

codebuildProjectEnvironmentComputeType = "BUILD_GENERAL1_SMALL"
codebuildProjectEnvironmentEnvironmentVariable = {
  "AWS_DEFAULT_REGION" = {
    name  = "AWS_DEFAULT_REGION"
    value = "us-east-1"
  }
  "AWS_ACCOUNT_ID" = {
    name  = "AWS_ACCOUNT_ID"
    value = "708508995810"
  }
  "IMAGE_REPO_NAME" = {
    name  = "IMAGE_REPO_NAME"
    value = "chop-suey"
  }
  "IMAGE_TAG" = {
    name  = "IMAGE_TAG"
    value = "not-today"
  }
}

codebuildProjectEnvironmentImage = "aws/codebuild/amazonlinux2-x86_64-standard:4.0"
codebuildProjectEnvironmentType  = "LINUX_CONTAINER"

resourceName                = "solid-stone-oreo"
codebuildProjectServiceRole = "arn:aws:iam::708508995810:role/bc-oauth-codebuild-role"

codebuildProjectSourceBuildspec         = "cicdECRImageBuild/buildspec.yaml"
codebuildProjectSourceGitCloneDepth     = 1
codebuildProjectSourceLocation          = "https://github.com/Bear-Cognition/templateTestRepo"
codebuildProjectSourceReportBuildStatus = true
codebuildProjectSourceType              = "GITHUB"

projectName = "girthy-toad"

deployedDate = "11/26/2024"