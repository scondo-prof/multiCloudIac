snowflakeAccountName = "main"

snowflakeOrganizationName = "maa23857"

snowflakeUser = "PROD_TERRAFORM_USER"

snowflakeAuthenticator = "SNOWFLAKE_JWT"

snowflakePrivateKey = "../../utils/tfSnowflake/prod_terraform_private_rsa_key.p8"

snowflakePrivateKeyPassphrase = "<p8-passphrase>"

snowflakeRole = "PROD_TERRAFORM_ROLE"

snowflakeWarehouse = "COMPUTE_WH"

resourceName = "lil-ceasar"

projectName = "test"

deployedDate = "2025-04-08"

tfModule = "ss"

gcpProjectId = "p3-prod-aa94d"

SS_SS_SARARG_AccountRoleComment = "this is a test for tf"

SS_SS_SARARG_GrantPrivilegesObjects = [
  {
    on_account_object = {
      object_name = "F001176"
      object_type = "DATABASE"
    }
    privileges = ["USAGE"]
  },
  {
    on_schema_object = {
      object_name = "F001176.BC_INTERNAL.CUST_ORDER_HISTORY"
      object_type = "TABLE"
    }
    privileges = ["DELETE", "INSERT", "SELECT", "UPDATE"]
  },
  {
    on_schema_object = {
      object_name = "F001176.BC_INTERNAL.EDIT_PO"
      object_type = "TABLE"
    }
    privileges = ["DELETE"]
  },
  {
    on_schema = {
      schema_name = "F001176.BC_INTERNAL"
    }
    privileges = ["USAGE"]
  },
]

SS_SS_SUP_PKS_PasswordLength = 20

SS_SS_SUP_PKS_PrivateKeyAlgorithm = "RSA"

SS_SS_SUP_PKS_PrivateKeyRsaBits = 2048

SS_SS_SUP_PKS_SWV_SecretRecoveryWindowInDays = 0

# SS_SS_SUP_PKS_privateKeyP8FilePath = "keys/ex_SS_SUP.p8"

SS_SS_SUP_SnowflakeUserDisabled = "false"

SS_SS_SUP_SnowflakeUserQueryTag = "test"

SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto = {}

SS_SIBS_SPCRDFG_CloudBuildTriggerServiceAccountsRoleId = "lilCeasar"

SS_SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName = "Bear-Cognition/UniShippersPricingTool-DASH"

SS_SIBS_SPCRDFG_CloudBuildTriggerBranchName = "main"

SS_SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName = "examplecicd"

SS_SIBS_SPCRDFG_CloudBuildTriggerBucketName = "gs://dash_build_logs"

SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels = ["projects/p3-prod-aa94d/notificationChannels/16159316952891778334"]

SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy = {
  notification_rate_limit = {
    period = "300s"
  }
}

SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto = {}

SS_SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels = ["projects/p3-prod-aa94d/notificationChannels/7275734209150042716"]

SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy = {
  notification_rate_limit = {
    period = "300s"
  }
}

SS_SIBS_BWV_S3BucketVersioningConfigurationStatus = "Enabled"

SS_SIBS_SWV_Staging_SnowflakeWarehouse = "COMPUTE_WH"

SS_SIBS_SWV_Staging_SecretVersionSecretString = {
  "env" = "dev"
}

SS_SIBS_SWV_Prod_SnowflakeWarehouse = "COMPUTE_WH"

SS_SIBS_SWV_Prod_SecretVersionSecretString = {
  "env" = "prod"
}