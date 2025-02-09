snowflakeAccountName = "main"

snowflakeOrganizationName = "maa23857"

snowflakeUser = "PROD_TERRAFORM_USER"

snowflakeAuthenticator = "SNOWFLAKE_JWT"

snowflakePrivateKey = "path/to/p8"

snowflakePrivateKeyPassphrase = "<p8-passphrase>"

snowflakeRole = "PROD_TERRAFORM_ROLE"

snowflakeWarehouse = "COMPUTE_WH"

grantPrivilegesAccountRoleName = "TF_TEST_ROLE"

grantPrivilegesObjects = [
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