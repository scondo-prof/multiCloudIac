gcpProjectId = "p3-prod-aa94d"

projectName = "test"

deployedDate = "2025-04-08"

tfModule = "sibs"

resourceName = "cool-cucumber"

SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto = {}

SIBS_SPCRDFG_CloudBuildTriggerServiceAccountsRoleId = "wubwubTest"

SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName = "Bear-Cognition/UniShippersPricingTool-DASH"

SIBS_SPCRDFG_CloudBuildTriggerBranchName = "main"

SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName = "examplecicd"

SIBS_SPCRDFG_CloudBuildTriggerBucketName = "gs://dash_build_logs"

SIBS_SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels = ["projects/p3-prod-aa94d/notificationChannels/16159316952891778334"]

SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy = {
  notification_rate_limit = {
    period = "300s"
  }
}

SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto = {}

SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels = ["projects/p3-prod-aa94d/notificationChannels/7275734209150042716"]

SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy = {
  notification_rate_limit = {
    period = "300s"
  }
}

SIBS_BWV_S3BucketVersioningConfigurationStatus = "Enabled"

SIBS_SWV_Staging_SecretVersionSecretString = {
  "env" = "dev"
}

SIBS_SWV_Prod_SecretVersionSecretString = {
  "env" = "prod"
}