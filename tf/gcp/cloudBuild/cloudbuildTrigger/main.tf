terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 6.6.0"
    }
  }
}

provider "google" {
  project     = var.gcpProjectId
  region      = var.gcpRegion
}

module "serviceAccount" {
  source = "../../iam/cloudBuildCloudRunRoleServiceBinding"

  projectId                               = var.gcpProjectId
  gcpRegion                               = var.gcpRegion
  resourceName                            = var.resourceName
  serviceAccountAccountId                 = var.serviceAccountAccountId
  serviceAccountDisabled                  = var.serviceAccountDisabled
  serviceAccountCreateIgnoreAlreadyExists = var.serviceAccountCreateIgnoreAlreadyExists
  roleId                                  = var.serviceAccountRoleId
  roleStage                               = var.serviceAccountRoleStage
}


resource "google_cloudbuild_trigger" "cloudbuildTrigger" {
  
  name = "${var.resourceName}-build-trigger"
  disabled = var.cloudbuildTriggerDisabled
  substitutions = var.cloudbuildTriggerSubstitutions
  service_account = module.serviceAccount.serviceAccountId
  include_build_logs = var.cloudbuildTriggerIncludeBuildLogs
  filename = var.cloudbuildTriggerFilename
  filter = var.cloudbuildTriggerFilter
  dynamic "git_file_source" {
    for_each = var.cloudbuildTriggerGitFileSource != null ? [var.cloudbuildTriggerGitFileSource] : []
    content {
    path = var.cloudbuildTriggerGitFileSourcePath
    uri = var.cloudbuildTriggerGitFileSourceUri
    repository = var.cloudbuildTriggerGitFileSourceRepository
    repo_type = var.cloudbuildTriggerGitFileSourceRepoType
    revision = var.cloudbuildTriggerGitFileSourceRevision
    github_enterprise_config = var.cloudbuildTriggerGitFileSourceGithubEnterpriseConfig
    bitbucket_server_config = var.cloudbuildTriggerGitFileSourceBitbucketServerConfig
    }
  }
  dynamic "repository_event_config" {
    for_each = var.cloudbuildTriggerRepositoryEventConfig != null ? [var.cloudbuildTriggerRepositoryEventConfig] : []
    content {
      repository = var.cloudbuildTriggerRepositoryEventConfigRepository
      dynamic "pull_request" {
        for_each = var.cloudbuildTriggerRepositoryEventConfig != null ? [var.cloudbuildTriggerRepositoryEventConfig] : []
        branch = 
      }
    }
  }
  
  
}