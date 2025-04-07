gcpProjectId = "p3-prod-aa94d"

projectName = "test"

deployedDate = "2025-04-07"

tfModule = "spcrdfg"

resourceName = "cool-cucumber"

SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto = {}

SPCRDFG_CRDPRFG_SWSV_SecretVersionObjects = [{
  secret_data = "test-staging"
}]

SPCRDFG_CloudBuildTriggerServiceAccountsRoleId = "wubwubTest"

SPCRDFG_CloudBuildTriggerGithubRepoName = "Bear-Cognition/UniShippersPricingTool-DASH"

SPCRDFG_CloudBuildTriggerBranchName = "main"

SPCRDFG_CloudBuildTriggerArtifactRepoName = "examplecicd"

SPCRDFG_CloudBuildTriggerBucketName = "gs://dash_build_logs"

SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels = ["projects/p3-prod-aa94d/notificationChannels/16159316952891778334"]

SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy = {
    notification_rate_limit = {
      period = "300s"
    }
}

SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto = {}

SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects = [{
  secret_data = "test"
}]

SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels = ["projects/p3-prod-aa94d/notificationChannels/7275734209150042716"]

SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy = {
    notification_rate_limit = {
      period = "300s"
    }
}