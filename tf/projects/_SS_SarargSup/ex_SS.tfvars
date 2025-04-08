snowflakeAccountName = "main"

snowflakeOrganizationName = "maa23857"

snowflakeUser = "PROD_TERRAFORM_USER"

snowflakeAuthenticator = "SNOWFLAKE_JWT"

snowflakePrivateKey = "../../utils/tfSnowflake/prod_terraform_private_rsa_key.p8"

snowflakePrivateKeyPassphrase = "<p8-passphrase>"

snowflakeRole = "PROD_TERRAFORM_ROLE"

snowflakeWarehouse = "COMPUTE_WH"

resourceName = "tf-test"

projectName = "test"

deployedDate = "2025-04-08"

tfModule = "ss"

SS_SARARG_AccountRoleComment = "this is a test for tf"

SS_SARARG_GrantPrivilegesObjects = [
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

SS_SUP_PKS_PasswordLength = 20

SS_SUP_PKS_PrivateKeyAlgorithm = "RSA"

SS_SUP_PKS_PrivateKeyRsaBits = 2048

SS_SUP_PKS_SWV_SecretRecoveryWindowInDays = 0

# SS_SUP_PKS_privateKeyP8FilePath = "keys/ex_SS_SUP.p8"

SS_SUP_SnowflakeUserDisabled = "false"

SS_SUP_SnowflakeUserQueryTag = "test"