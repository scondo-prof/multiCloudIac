snowflakeAccountName = "main"

snowflakeOrganizationName = "maa23857"

snowflakeUser = "PROD_TERRAFORM_USER"

snowflakeAuthenticator = "SNOWFLAKE_JWT"

snowflakePrivateKey = "../../utils/tfSnowflake/prod_terraform_private_rsa_key.p8"

snowflakePrivateKeyPassphrase = "<p8-passphrase>"

snowflakeRole = "PROD_TERRAFORM_ROLE"

snowflakeWarehouse = "COMPUTE_WH"

resourceName = "im-makin-shoes"

projectName = "wah-wee"

deployedDate = "02-10-2025"

tfModule = "ss-sibs-ss"

SS_SS_SARARG_AccountRoleComment = "this is a test for tf"

SS_SS_SARARG_GrantPrivilegesObjects = [
  {
    on_account_object = {
      object_name = "example"
      object_type = "DATABASE"
    }
    privileges = ["USAGE"]
  },
  {
    on_schema = {
      schema_name = "example.cool_shoes"
    }
    privileges = ["USAGE"]
  },
  {
    on_schema_object = {
      object_name = "example.cool_shoes.mmm_leather"
      object_type = "TABLE"
    }
    privileges = ["DELETE", "INSERT", "SELECT", "UPDATE"]
  },
]

SS_SS_SUP_PKS_PasswordLength = 20

SS_SS_SUP_PKS_PrivateKeyAlgorithm = "RSA"

SS_SS_SUP_PKS_PrivateKeyRsaBits = 2048

SS_SS_SUP_PKS_SWV_SecretRecoveryWindowInDays = 0

SS_SS_SUP_PKS_privateKeyP8FilePath = "keys/ex_SS.p8"

SS_SS_SUP_SnowflakeUserDisabled = "false"

SS_SS_SUP_SnowflakeUserQueryTag = "test"

SS_SIBS_SPCRDFG_CloudBuildTriggerRoleId = "tfTestDash"

SS_SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName = "<Repo-Owner>/<Repo-Name>"

SS_SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout = 1200

SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances = 10

SS_SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory = 4

SS_SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus = 4

SS_SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout = 1200

SS_SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances = 10

SS_SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus = 4

SS_SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory = 4

SS_SIBS_IUWPAKSMS_UWP_IamUserForceDestroy = true

SS_SIBS_IUWPAKSMS_IamAccessKeyStatus = "Active"

SS_SIBS_IUWPAKSMS_SecretRecoveryWindowInDays = 0

SS_SIBS_IUWPAKSMS_UWP_IamPolicyDocumentStatements = [{
  Action   = ["s3:*"]
  Effect   = "Allow"
  Resource = ["arn:aws:s3:::shoe-factory", "arn:aws:s3:::shoe-factory/*"]
  Sid      = "s3"
  },
  {
    Action = [
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret",
      "secretsmanager:ListSecretVersionIds"
    ],
    Condition = {},
    Effect    = "Allow",
    Principal = {},
    Resource = [
      "arn:aws:secretsmanager:us-east-1:123456789101:secret:shoe-leather-1332olkjgs",
    ],
    Sid = "secretPermissions"
  },
]

SS_SIBS_BWV_S3BucketForceDestroy = false

SS_SIBS_BWV_S3BucketVersioningConfigurationStatus = "Enabled"

SS_SIBS_SWV_Staging_SecretRecoveryWindowInDays = 0

SS_SIBS_SWV_Staging_SnowflakeWarehouse = "THE_SHOE_FACTORY"

SS_SIBS_SWV_Staging_SecretVersionSecretString = {
  "WORKERS" = "HAPPY"
  "SHOES" = "DURABLE"
  "MADE_FOR_RUNNING" = "PROBABLY"
}


SS_SIBS_SWV_Prod_SecretRecoveryWindowInDays = 0

SS_SIBS_SWV_Prod_SnowflakeWarehouse = "THE_SHOE_FACTORY"

SS_SIBS_SWV_Prod_SecretVersionSecretString = {
  "WORKERS" = "HAPPY"
  "SHOES" = "DURABLE"
  "MADE_FOR_RUNNING" = "PROBABLY"
}