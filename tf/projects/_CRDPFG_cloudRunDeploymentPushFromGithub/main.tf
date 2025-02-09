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

module "secret" {
  source = "../../gcp/secretsManager/secretWithSecretVersion"

  projectId                   = var.gcpProjectId
  gcpRegion                   = var.gcpRegion
  resourceName                = var.resourceName
  projectName                 = var.projectName
  deployedDate                = var.deployedDate
  createdBy                   = var.createdBy
  secretVersionSecretData     = var.CRDPFG_SecretVersionSecretData
  secretVersionEnabled        = var.CRDPFG_SecretVersionEnabled
  secretVersionDeletionPolicy = var.CRDPFG_SecretVersionDeletionPolicy
}

module "cloudBuildTrigger" {
  source = "../../gcp/cloudBuild/githubRepoPushCloudbuildTrigger"

  resourceName                            = var.resourceName
  gcpRegion                               = var.gcpRegion
  serviceAccountAccountId                 = "${var.resourceName}-prod"
  serviceAccountDisabled                  = var.CRDPFG_CloudBuildTriggerServiceAccountDisabled
  serviceAccountCreateIgnoreAlreadyExists = var.CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  serviceAccountRoleId                    = var.CRDPFG_CloudBuildTriggerRoleId
  serviceAccountRoleStage                 = var.CRDPFG_CloudBuildTriggerRoleStage
  cloudBuildTriggerYamlPath               = var.CRDPFG_CloudBuildTriggerYamlPath
  cloudBuildTriggerGithubRepoName         = var.CRDPFG_CloudBuildTriggerGithubRepoName
  cloudBuildTriggerBranchName             = var.CRDPFG_CloudBuildTriggerBranchName
  cloudBuildTriggerArtifactRepoName       = var.CRDPFG_CloudBuildTriggerArtifactRepoName
  projectId                               = var.gcpProjectId
  cloudBuildTriggerBucketName             = var.CRDPFG_CloudBuildTriggerBucketName
  cloudBuildTriggerAdditionalSubstitutions = merge({
    _CONCURRENT_REQUESTS = var.CRDPFG_CloudRunConcurrentRequests
    _REQUESTS_TIMEOUT    = "${var.CRDPFG_CloudRunRequestsTimeout}s"
    _PORT_NUMBER         = var.CRDPFG_CloudRunPortNumber
    _MIN_INSTANCES       = var.CRDPFG_CloudRunMinInstances
    _MAX_INSTANCES       = var.CRDPFG_CloudRunMaxInstances
    _VPC_CONNECTOR       = var.CRDPFG_CloudRunVpcConnector
    _G_UNICORN_WORKERS   = var.CRDPFG_CloudRunNumberOfVcpus * 2 + 1
    _G_UNICORN_TIMEOUT   = var.CRDPFG_CloudRunRequestsTimeout
    _AMOUNT_OF_MEMORY    = "${var.CRDPFG_CloudRunAmountOfMemory}Gi"
    _NUMBER_OF_VCPU      = var.CRDPFG_CloudRunNumberOfVcpus
    _ENV_VARIABLE_NAME   = var.CRDPFG_CloudRunEnvVariableName
    _SECRET_NAME         = module.secret.secretName
  }, var.CRDPFG_CloudBuildTriggerAdditionalSubstitutions)
}

module "cloudRunAlertPolicy" {
  source = "../../gcp/cloudMonitoring/cloudRunError"

  resourceName                             = var.resourceName
  projectId                                = var.gcpProjectId
  cloudRunAlertPolicyNotificationChannelId = var.CRDPFG_CloudRunAlertPolicyNotificationChannelId
  cloudRunAlertPolicyNotificationRateLimit = var.CRDPFG_CloudRunAlertPolicyNotificationRateLimit
  cloudRunAlertPolicyAutoClose             = var.CRDPFG_CloudRunAlertPolicyAutoClose
}

module "cloudRunMemAlertPolicy" {
  source = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"

  gcpProjectId        = var.gcpProjectId
  gcpRegion           = var.gcpRegion
  resourceName        = "${var.resourceName}-cloud-run-mem"
  alertPolicyCombiner = "OR"
  alertPolicyConditions = {
    condition_monitoring_query_language = {
      duration = "300s"
      trigger = {
        percent = var.CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
      }
      query = <<EOT
fetch cloud_run_revision
| metric 'run.googleapis.com/container/memory/utilizations'
| filter (resource.service_name == '${var.resourceName}')
| group_by 5m,
    [value_utilizations_percentile: percentile(value.utilizations, 99)]
| every 5m
| condition val() > .${var.CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent}
EOT
    }
    display_name = "${var.resourceName} - High Mem Utilization in Cloud Run Service"
  }
  alertPolicyEnabled              = true
  alertPolicyNotificationChannels = var.CRDPFG_CloudRunInfraAlertPolicyNotificationChannels
  createdBy                       = var.createdBy
  deployedDate                    = var.deployedDate
  projectName                     = var.projectName
  additionalAlertPolicyUserLabels = var.additionalLabels
  alertPolicySeverity             = "WARNING"
}

module "cloudRunCpuAlertPolicy" {
  source = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"

  gcpProjectId        = var.gcpProjectId
  gcpRegion           = var.gcpRegion
  resourceName        = "${var.resourceName}-cloud-run-cpu"
  alertPolicyCombiner = "OR"
  alertPolicyConditions = {
    condition_monitoring_query_language = {
      duration = "300s"
      trigger = {
        percent = var.CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
      }
      query = <<EOT
fetch cloud_run_revision
| metric 'run.googleapis.com/container/memory/utilizations'
| filter (resource.service_name == '${var.resourceName}')
| group_by 5m,
    [value_utilizations_percentile: percentile(value.utilizations, 99)]
| every 5m
| condition val() > .${var.CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent}
EOT
    }
    display_name = "${var.resourceName} - High Cpu Utilization in Cloud Run Service"
  }
  alertPolicyEnabled              = true
  alertPolicyNotificationChannels = var.CRDPFG_CloudRunInfraAlertPolicyNotificationChannels
  createdBy                       = var.createdBy
  deployedDate                    = var.deployedDate
  projectName                     = var.projectName
  additionalAlertPolicyUserLabels = var.additionalLabels
  alertPolicySeverity             = "WARNING"
}