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

resource "snowflake_grant_account_role" "grantAccountRole" {
  role_name        = var.grantAccountRoleName
  parent_role_name = var.grantAccountRoleParentRoleName
  user_name        = var.grantAccountRoleUserName
}