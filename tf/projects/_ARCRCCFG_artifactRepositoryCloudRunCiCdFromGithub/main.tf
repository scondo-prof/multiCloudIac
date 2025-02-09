terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}

provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

module "artifactRegistryRepository" {
  source = "../../gcp/artifactRegistry/genericArtifactRegistryRepository"

  gcpProjectId                                      = var.gcpProjectId
  gcpRegion                                         = var.gcpRegion
  resourceName                                      = var.resourceName
  artifactRegistryRepositoryFormat                  = var.ARCRCCFG_ArtifactRegistryRepositoryFormat
  projectName                                       = var.projectName
  deployedDate                                      = var.deployedDate
  additionalLabels                                  = var.additionalLabels
  artifactRegistryRepositoryKmsKeyName              = var.ARCRCCFG_ArtifactRegistryRepositoryKmsKeyName
  artifactRegistryRepositoryDockerConfig            = var.ARCRCCFG_ArtifactRegistryRepositoryDockerConfig
  artifactRegistryRepositoryMavenConfig             = var.ARCRCCFG_ArtifactRegistryRepositoryMavenConfig
  artifactRegistryRepositoryMode                    = var.ARCRCCFG_ArtifactRegistryRepositoryMode
  artifactRegistryRepositoryVirtualRepositoryConfig = var.ARCRCCFG_ArtifactRegistryRepositoryVirtualRepositoryConfig
  artifactRegistryRepositoryCleanupPolicies         = var.ARCRCCFG_ArtifactRegistryRepositoryCleanupPolicies
  artifactRegistryRepositoryRemoteRepositoryConfig  = var.ARCRCCFG_ArtifactRegistryRepositoryRemoteRepositoryConfig
  artifactRegistryRepositoryCleanupPolicyDryRun     = var.ARCRCCFG_ArtifactRegistryRepositoryCleanupPolicyDryRun
}

module "CRDPFG" {
  source = "../_CRDPFG_cloudRunDeploymentPushFromGithub"

  projectId                                                       = var.gcpProjectId
  gcpRegion                                                       = var.gcpRegion
  resourceName                                                    = var.resourceName
  projectName                                                     = var.projectName
  deployedDate                                                    = var.deployedDate
  createdBy                                                       = var.createdBy
  CRDPFG_SecretVersionSecretData                                  = var.ARCRCCFG_SecretVersionSecretData
  CRDPFG_SecretVersionEnabled                                     = var.ARCRCCFG_SecretVersionEnabled
  CRDPFG_SecretVersionDeletionPolicy                              = var.ARCRCCFG_SecretVersionDeletionPolicy
  CRDPFG_CloudBuildTriggerServiceAccountDisabled                  = var.ARCRCCFG_CloudBuildTriggerServiceAccountDisabled
  CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists = var.ARCRCCFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  CRDPFG_CloudBuildTriggerRoleId                                  = var.ARCRCCFG_CloudBuildTriggerRoleId
  CRDPFG_CloudBuildTriggerRoleStage                               = var.ARCRCCFG_CloudBuildTriggerRoleStage
  CRDPFG_CloudBuildTriggerYamlPath                                = var.ARCRCCFG_CloudBuildTriggerYamlPath
  CRDPFG_CloudBuildTriggerGithubRepoName                          = var.ARCRCCFG_CloudBuildTriggerGithubRepoName
  CRDPFG_CloudBuildTriggerBranchName                              = var.ARCRCCFG_CloudBuildTriggerBranchName
  CRDPFG_CloudBuildTriggerArtifactRepoName                        = module.artifactRegistryRepository.artifactRegistryRepositoryName
  CRDPFG_CloudBuildTriggerBucketName                              = var.ARCRCCFG_CloudBuildTriggerBucketName
  CRDPFG_CloudRunConcurrentRequests                               = var.ARCRCCFG_CloudRunConcurrentRequests
  CRDPFG_CloudRunRequestsTimeout                                  = var.ARCRCCFG_CloudRunRequestsTimeout
  CRDPFG_CloudRunPortNumber                                       = var.ARCRCCFG_CloudRunPortNumber
  CRDPFG_CloudRunMinInstances                                     = var.ARCRCCFG_CloudRunMinInstances
  CRDPFG_CloudRunMaxInstances                                     = var.ARCRCCFG_CloudRunMaxInstances
  CRDPFG_CloudRunVpcConnector                                     = var.ARCRCCFG_CloudRunVpcConnector
  CRDPFG_CloudRunNumberOfVcpus                                    = var.ARCRCCFG_CloudRunNumberOfVcpus
  CRDPFG_CloudRunAmountOfMemory                                   = var.ARCRCCFG_CloudRunAmountOfMemory
  CRDPFG_CloudRunEnvVariableName                                  = var.ARCRCCFG_CloudRunEnvVariableName
  CRDPFG_CloudBuildTriggerAdditionalSubstitutions                 = var.ARCRCCFG_CloudBuildTriggerAdditionalSubstitutions
  CRDPFG_CloudRunAlertPolicyNotificationChannelId                 = var.ARCRCCFG_CloudRunAlertPolicyNotificationChannelId
  CRDPFG_CloudRunAlertPolicyNotificationRateLimit                 = var.ARCRCCFG_CloudRunAlertPolicyNotificationRateLimit
  CRDPFG_CloudRunAlertPolicyAutoClose                             = var.ARCRCCFG_CloudRunAlertPolicyAutoClose
}