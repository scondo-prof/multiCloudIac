gcpRegion = "us-east1"

resourceName = "testee-test"

projectName = "test"

deployedDate = "2025-04-01"

tfModule = "crdprfg"

CRDPRFG_SWSV_SecretReplicationAuto = {}

CRDPRFG_CloudBuildTriggerServiceAccountRoleId = "testeeTest"

CRDPRFG_CloudBuildTriggerGithubRepoName = "Bear-Cognition/strata-DASH"

CRDPRFG_CloudBuildTriggerBranchName = "main"

CRDPRFG_SWSV_SecretVersionObjects = [{
  secret_data = "fill"
}]

CRDPRFG_CloudRunRequestsTimeout = 1200

CRDPRFG_CloudRunMaxInstances = 10

CRDPRFG_CloudRunNumberOfVcpus = 4

CRDPRFG_CloudRunAmountOfMemory = 8

CRDPRFG_CloudBuildTriggerArtifactRepoName = "dash-apps"

CRDPRFG_CloudBuildTriggerBucketName = "gs://dash_build_logs"

CRDPRFG_CloudRunPortNumber = "8080"

CRDPRFG_AlertPolicyNotificationChannels = ["projects/p3-prod-aa94d/notificationChannels/16159316952891778334"]

CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy = {
  notification_rate_limit = {
    period = "300s"
  }
}