provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}

module "serviceAccount" {
  source = "../../iam/cloudBuildCloudRunRoleServiceBinding"

  projectId                               = var.projectId
  gcpRegion                               = var.gcpRegion
  resourceName                            = var.resourceName
  serviceAccountAccountId                 = var.serviceAccountAccountId
  serviceAccountDisabled                  = var.serviceAccountDisabled
  serviceAccountCreateIgnoreAlreadyExists = var.serviceAccountCreateIgnoreAlreadyExists
  roleId                                  = var.serviceAccountRoleId
  roleStage                               = var.serviceAccountRoleStage
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
    push {
      branch = "^${var.cloudBuildTriggerBranchName}$"
    }
  }

  substitutions = merge({
    _APP_NAME        = var.resourceName
    _REGION_NAME     = var.gcpRegion
    _ARTIFACT_REPO   = var.cloudBuildTriggerArtifactRepoName
    _PROJECT_NAME    = var.projectId
    _SERVICE_ACCOUNT = module.serviceAccount.serviceAccountEmail
    _BUCKET_NAME     = var.cloudBuildTriggerBucketName
  }, var.cloudBuildTriggerAdditionalSubstitutions)
}
