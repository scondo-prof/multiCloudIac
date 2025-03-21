terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 1.0"
    }
  }
}

provider "snowflake" {
  authenticator                     = var.snowflakeAuthenticator
  client_ip                         = var.snowflakeClientIp
  client_request_mfa_token          = var.snowflakeClientRequestMfaToken
  client_store_temporary_credential = var.snowflakeClientStoreTemporaryCredential
  client_timeout                    = var.snowflakeClientTimeout
  disable_query_context_cache       = var.snowflakeDisableQueryContextCache
  disable_telemetry                 = var.snowflakeDisableTelemetry
  external_browser_timeout          = var.snowflakeExternalBrowserTimeout
  host                              = var.snowflakeHost
  insecure_mode                     = var.snowflakeInsecureMode
  jwt_client_timeout                = var.snowflakeJwtClientTimeout
  jwt_expire_timeout                = var.snowflakeJwtExpireTimeout
  keep_session_alive                = var.snowflakeKeepSessionAlive
  login_timeout                     = var.snowflakeLoginTimeout
  ocsp_fail_open                    = var.snowflakeOcspFailOpen
  okta_url                          = var.snowflakeOktaUrl
  params                            = var.snowflakeParams
  passcode                          = var.snowflakePasscode
  passcode_in_password              = var.snowflakePasscodeInPassword
  password                          = var.snowflakePassword
  port                              = var.snowflakePort
  private_key                       = can(file(var.snowflakePrivateKey)) ? file(var.snowflakePrivateKey) : null
  private_key_passphrase            = var.snowflakePrivateKeyPassphrase
  profile                           = var.snowflakeProfile
  protocol                          = var.snowflakeProtocol
  request_timeout                   = var.snowflakeRequestTimeout
  role                              = var.snowflakeRole
  token                             = var.snowflakeToken
  user                              = var.snowflakeUser
  validate_default_parameters       = var.snowflakeValidateDefaultParameters
  warehouse                         = var.snowflakeWarehouse
}

resource "snowflake_grant_privileges_to_account_role" "grantPrivileges" {
  count                = length(var.grantPrivilegesObjects)
  account_role_name    = var.grantPrivilegesAccountRoleName
  all_privileges       = var.grantPrivilegesAllPrivileges
  always_apply         = var.grantPrivilegesAlwaysApply
  always_apply_trigger = var.grantPrivilegesAlwaysApplyTrigger
  on_account           = var.grantPrivilegesOnAccount

  dynamic "on_account_object" {
    for_each = var.grantPrivilegesObjects[count.index]["on_account_object"] != null ? [var.grantPrivilegesObjects[count.index]["on_account_object"]] : []
    content {
      object_name = on_account_object.value["object_name"]
      object_type = on_account_object.value["object_type"]
    }
  }

  dynamic "on_schema" {
    for_each = var.grantPrivilegesObjects[count.index]["on_schema"] != null ? [var.grantPrivilegesObjects[count.index]["on_schema"]] : []
    content {
      all_schemas_in_database    = on_schema.value["all_schemas_in_database"]
      future_schemas_in_database = on_schema.value["future_schemas_in_database"]
      schema_name                = on_schema.value["schema_name"]
    }
  }

  dynamic "on_schema_object" {
    for_each = var.grantPrivilegesObjects[count.index]["on_schema_object"] != null ? [var.grantPrivilegesObjects[count.index]["on_schema_object"]] : []
    content {
      dynamic "all" {
        for_each = on_schema_object.value["all"] != null ? [on_schema_object.value["all"]] : []
        content {
          object_type_plural = all.value["object_type_plural"]
          in_database        = all.value["in_database"]
          in_schema          = all.value["in_schema"]
        }
      }

      dynamic "future" {
        for_each = on_schema_object.value["future"] != null ? [on_schema_object.value["future"]] : []
        content {
          object_type_plural = future.value["object_type_plural"]
          in_database        = future.value["in_database"]
          in_schema          = future.value["in_schema"]
        }
      }

      object_name = on_schema_object.value["object_name"]
      object_type = on_schema_object.value["object_type"]
    }
  }

  privileges        = var.grantPrivilegesObjects[count.index]["privileges"]
  with_grant_option = var.grantPrivilegesObjects[count.index]["with_grant_option"]
}