provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

module "serviceAccount" {
  source = "../../iam/cloudBuildCloudRunRoleServiceBinding"

  gcpProjectId                               = var.gcpProjectId
  gcpRegion                               = var.gcpRegion
  resourceName                            = var.resourceName
  serviceAccountAccountId                 = var.cloudBuildTriggerServiceAccountAccountId
  serviceAccountDisabled                  = var.cloudBuildTriggerServiceAccountDisabled
  serviceAccountCreateIgnoreAlreadyExists = var.cloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  roleId                                  = var.cloudBuildTriggerServiceAccountRoleId
  roleStage                               = var.cloudBuildTriggerServiceAccountRoleStage
}

resource "google_cloudbuild_trigger" "cloudBuildTrigger" {
  name            = "${var.resourceName}-build-trigger"
  location        = var.gcpRegion
  service_account = module.serviceAccount.serviceAccountId
  filename        = var.cloudBuildTriggerYamlPath

  included_files = [
    "**",
  ]

  github {
    owner = split("/", var.cloudBuildTriggerGithubRepoName)[0]
    name  = split("/", var.cloudBuildTriggerGithubRepoName)[1]
    pull_request {
      branch = "^${var.cloudBuildTriggerBranchName}$"
    }
  }

  source_to_build {
    uri       = var.cloudBuildTriggerGithubRepoName
    ref       = "refs/pull/$${github_pull_id}/head"
    repo_type = "GITHUB"
  }

  substitutions = merge({
    _APP_NAME        = var.resourceName
    _REGION_NAME     = var.gcpRegion
    _ARTIFACT_REPO   = var.cloudBuildTriggerArtifactRepoName
    _PROJECT_NAME    = var.gcpProjectId
    _SERVICE_ACCOUNT = module.serviceAccount.serviceAccountEmail
    _BUCKET_NAME     = var.cloudBuildTriggerBucketName
  }, var.cloudBuildTriggerAdditionalSubstitutions)
}
