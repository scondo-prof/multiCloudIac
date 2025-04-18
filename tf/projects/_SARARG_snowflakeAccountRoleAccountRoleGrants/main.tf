
module "accountRole" {
  source                                  = "../../snowflake/principals/genericAccountRole"
  snowflakeAccountName                    = var.snowflakeAccountName
  snowflakeAuthenticator                  = var.snowflakeAuthenticator
  snowflakeClientIp                       = var.snowflakeClientIp
  snowflakeClientRequestMfaToken          = var.snowflakeClientRequestMfaToken
  snowflakeClientStoreTemporaryCredential = var.snowflakeClientStoreTemporaryCredential
  snowflakeClientTimeout                  = var.snowflakeClientTimeout
  snowflakeDisableConsoleLogin            = var.snowflakeDisableConsoleLogin
  snowflakeDisableQueryContextCache       = var.snowflakeDisableQueryContextCache
  snowflakeDisableTelemetry               = var.snowflakeDisableTelemetry
  snowflakeDriverTracing                  = var.snowflakeDriverTracing
  snowflakeExternalBrowserTimeout         = var.snowflakeExternalBrowserTimeout
  snowflakeHost                           = var.snowflakeHost
  snowflakeIncludeRetryReason             = var.snowflakeIncludeRetryReason
  snowflakeInsecureMode                   = var.snowflakeInsecureMode
  snowflakeJwtClientTimeout               = var.snowflakeJwtClientTimeout
  snowflakeJwtExpireTimeout               = var.snowflakeJwtExpireTimeout
  snowflakeKeepSessionAlive               = var.snowflakeKeepSessionAlive
  snowflakeLoginTimeout                   = var.snowflakeLoginTimeout
  snowflakeMaxRetryCount                  = var.snowflakeMaxRetryCount
  snowflakeOcspFailOpen                   = var.snowflakeOcspFailOpen
  snowflakeOktaUrl                        = var.snowflakeOktaUrl
  snowflakeOrganizationName               = var.snowflakeOrganizationName
  snowflakeParams                         = var.snowflakeParams
  snowflakePasscode                       = var.snowflakePasscode
  snowflakePasscodeInPassword             = var.snowflakePasscodeInPassword
  snowflakePassword                       = var.snowflakePassword
  snowflakePort                           = var.snowflakePort
  snowflakePreviewFeaturesEnabled         = var.snowflakePreviewFeaturesEnabled
  snowflakePrivateKey                     = var.snowflakePrivateKey
  snowflakePrivateKeyPassphrase           = var.snowflakePrivateKeyPassphrase
  snowflakeProfile                        = var.snowflakeProfile
  snowflakeProtocol                       = var.snowflakeProtocol
  snowflakeRequestTimeout                 = var.snowflakeRequestTimeout
  snowflakeRole                           = var.snowflakeRole
  snowflakeTmpDirectoryPath               = var.snowflakeTmpDirectoryPath
  snowflakeToken                          = var.snowflakeToken
  snowflakeUser                           = var.snowflakeUser
  snowflakeValidateDefaultParameters      = var.snowflakeValidateDefaultParameters
  snowflakeWarehouse                      = var.snowflakeWarehouse
  resourceName                            = var.resourceName
  accountRoleComment                      = var.SARARG_AccountRoleComment
}

#---

module "grantPrivileges" {
  source                                  = "../../snowflake/principals/genericGrantPrivilegesToAccountRole"
  snowflakeAccountName                    = var.snowflakeAccountName
  snowflakeAuthenticator                  = var.snowflakeAuthenticator
  snowflakeClientIp                       = var.snowflakeClientIp
  snowflakeClientRequestMfaToken          = var.snowflakeClientRequestMfaToken
  snowflakeClientStoreTemporaryCredential = var.snowflakeClientStoreTemporaryCredential
  snowflakeClientTimeout                  = var.snowflakeClientTimeout
  snowflakeDisableConsoleLogin            = var.snowflakeDisableConsoleLogin
  snowflakeDisableQueryContextCache       = var.snowflakeDisableQueryContextCache
  snowflakeDisableTelemetry               = var.snowflakeDisableTelemetry
  snowflakeDriverTracing                  = var.snowflakeDriverTracing
  snowflakeExternalBrowserTimeout         = var.snowflakeExternalBrowserTimeout
  snowflakeHost                           = var.snowflakeHost
  snowflakeIncludeRetryReason             = var.snowflakeIncludeRetryReason
  snowflakeInsecureMode                   = var.snowflakeInsecureMode
  snowflakeJwtClientTimeout               = var.snowflakeJwtClientTimeout
  snowflakeJwtExpireTimeout               = var.snowflakeJwtExpireTimeout
  snowflakeKeepSessionAlive               = var.snowflakeKeepSessionAlive
  snowflakeLoginTimeout                   = var.snowflakeLoginTimeout
  snowflakeMaxRetryCount                  = var.snowflakeMaxRetryCount
  snowflakeOcspFailOpen                   = var.snowflakeOcspFailOpen
  snowflakeOktaUrl                        = var.snowflakeOktaUrl
  snowflakeOrganizationName               = var.snowflakeOrganizationName
  snowflakeParams                         = var.snowflakeParams
  snowflakePasscode                       = var.snowflakePasscode
  snowflakePasscodeInPassword             = var.snowflakePasscodeInPassword
  snowflakePassword                       = var.snowflakePassword
  snowflakePort                           = var.snowflakePort
  snowflakePreviewFeaturesEnabled         = var.snowflakePreviewFeaturesEnabled
  snowflakePrivateKey                     = var.snowflakePrivateKey
  snowflakePrivateKeyPassphrase           = var.snowflakePrivateKeyPassphrase
  snowflakeProfile                        = var.snowflakeProfile
  snowflakeProtocol                       = var.snowflakeProtocol
  snowflakeRequestTimeout                 = var.snowflakeRequestTimeout
  snowflakeRole                           = var.snowflakeRole
  snowflakeTmpDirectoryPath               = var.snowflakeTmpDirectoryPath
  snowflakeToken                          = var.snowflakeToken
  snowflakeUser                           = var.snowflakeUser
  snowflakeValidateDefaultParameters      = var.snowflakeValidateDefaultParameters
  snowflakeWarehouse                      = var.snowflakeWarehouse
  grantPrivilegesObjects                  = var.SARARG_GrantPrivilegesObjects
  grantPrivilegesAccountRoleName          = module.accountRole.snowflakeRoleFullyQualifiedName
  grantPrivilegesAllPrivileges            = var.SARARG_GrantPrivilegesAllPrivileges
  grantPrivilegesAlwaysApply              = var.SARARG_GrantPrivilegesAlwaysApply
  grantPrivilegesAlwaysApplyTrigger       = var.SARARG_GrantPrivilegesAlwaysApplyTrigger
  grantPrivilegesOnAccount                = var.SARARG_GrantPrivilegesOnAccount
}

#---
