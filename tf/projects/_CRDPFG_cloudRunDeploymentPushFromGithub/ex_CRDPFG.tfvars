gcpRegion = "us-east1"

resourceName = "tester-test"

projectName = "test"

deployedDate = "2025-03-31"

tfModule = "crdpfg"

CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto = {}

CRDPFG_ServiceAccountRoleId = "testerTest"

CRDPFG_CloudBuildTriggerGithubRepoName = "Bear-Cognition/strata-DASH"

CRDPFG_SWSV_Cloudbuild_SecretVersionObjects = [{
  secret_data = "fill"
}]

CRDPFG_CloudRunRequestsTimeout = 1200

CRDPFG_CloudRunMaxInstances = 10

CRDPFG_CloudRunNumberOfVcpus = 4

CRDPFG_CloudRunAmountOfMemory = 8

CRDPFG_CloudBuildTriggerArtifactRepoName = "dash-apps"

CRDPFG_CloudBuildTriggerBucketName = "gs://dash_build_logs"

CRDPFG_CloudRunPortNumber = "8080"

CRDPFG_CloudRunInfraAlertPolicyNotificationChannels = ["projects/p3-prod-aa94d/notificationChannels/16159316952891778334"]

CRDPFG_CloudRunLogsAlertPolicyAlertStrategy = {
  notification_rate_limit = {
    period = "300s"
  }
}