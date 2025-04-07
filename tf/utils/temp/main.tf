
    module "accountRole" {
  source = "../../snowflake/principals/genericAccountRole"
snowflakeAuthenticator = var.snowflakeAuthenticator
snowflakeClientIp = var.snowflakeClientIp
snowflakeClientRequestMfaToken = var.snowflakeClientRequestMfaToken
snowflakeClientStoreTemporaryCredential = var.snowflakeClientStoreTemporaryCredential
snowflakeClientTimeout = var.snowflakeClientTimeout
snowflakeDisableQueryContextCache = var.snowflakeDisableQueryContextCache
snowflakeDisableTelemetry = var.snowflakeDisableTelemetry
snowflakeExternalBrowserTimeout = var.snowflakeExternalBrowserTimeout
snowflakeHost = var.snowflakeHost
snowflakeInsecureMode = var.snowflakeInsecureMode
snowflakeJwtClientTimeout = var.snowflakeJwtClientTimeout
snowflakeJwtExpireTimeout = var.snowflakeJwtExpireTimeout
snowflakeKeepSessionAlive = var.snowflakeKeepSessionAlive
snowflakeLoginTimeout = var.snowflakeLoginTimeout
snowflakeOcspFailOpen = var.snowflakeOcspFailOpen
snowflakeOktaUrl = var.snowflakeOktaUrl
snowflakeParams = var.snowflakeParams
snowflakePasscode = var.snowflakePasscode
snowflakePasscodeInPassword = var.snowflakePasscodeInPassword
snowflakePassword = var.snowflakePassword
snowflakePort = var.snowflakePort
snowflakePrivateKey = var.snowflakePrivateKey
snowflakePrivateKeyPassphrase = var.snowflakePrivateKeyPassphrase
snowflakeProfile = var.snowflakeProfile
snowflakeProtocol = var.snowflakeProtocol
snowflakeRequestTimeout = var.snowflakeRequestTimeout
snowflakeRole = var.snowflakeRole
snowflakeToken = var.snowflakeToken
snowflakeUser = var.snowflakeUser
snowflakeValidateDefaultParameters = var.snowflakeValidateDefaultParameters
snowflakeWarehouse = var.snowflakeWarehouse
resourceName = var.resourceName
accountRoleComment = var.SARARG_AccountRoleComment
}

#---

    module "grantPrivileges" {
  source = "../../snowflake/principals/genericGrantPrivilegesToAccountRole"
snowflakeAuthenticator = var.snowflakeAuthenticator
snowflakeClientIp = var.snowflakeClientIp
snowflakeClientRequestMfaToken = var.snowflakeClientRequestMfaToken
snowflakeClientStoreTemporaryCredential = var.snowflakeClientStoreTemporaryCredential
snowflakeClientTimeout = var.snowflakeClientTimeout
snowflakeDisableQueryContextCache = var.snowflakeDisableQueryContextCache
snowflakeDisableTelemetry = var.snowflakeDisableTelemetry
snowflakeExternalBrowserTimeout = var.snowflakeExternalBrowserTimeout
snowflakeHost = var.snowflakeHost
snowflakeInsecureMode = var.snowflakeInsecureMode
snowflakeJwtClientTimeout = var.snowflakeJwtClientTimeout
snowflakeJwtExpireTimeout = var.snowflakeJwtExpireTimeout
snowflakeKeepSessionAlive = var.snowflakeKeepSessionAlive
snowflakeLoginTimeout = var.snowflakeLoginTimeout
snowflakeOcspFailOpen = var.snowflakeOcspFailOpen
snowflakeOktaUrl = var.snowflakeOktaUrl
snowflakeParams = var.snowflakeParams
snowflakePasscode = var.snowflakePasscode
snowflakePasscodeInPassword = var.snowflakePasscodeInPassword
snowflakePassword = var.snowflakePassword
snowflakePort = var.snowflakePort
snowflakePrivateKey = var.snowflakePrivateKey
snowflakePrivateKeyPassphrase = var.snowflakePrivateKeyPassphrase
snowflakeProfile = var.snowflakeProfile
snowflakeProtocol = var.snowflakeProtocol
snowflakeRequestTimeout = var.snowflakeRequestTimeout
snowflakeRole = var.snowflakeRole
snowflakeToken = var.snowflakeToken
snowflakeUser = var.snowflakeUser
snowflakeValidateDefaultParameters = var.snowflakeValidateDefaultParameters
snowflakeWarehouse = var.snowflakeWarehouse
grantPrivilegesObjects = var.SARARG_GrantPrivilegesObjects
grantPrivilegesAccountRoleName = var.SARARG_GrantPrivilegesAccountRoleName
grantPrivilegesAllPrivileges = var.SARARG_GrantPrivilegesAllPrivileges
grantPrivilegesAlwaysApply = var.SARARG_GrantPrivilegesAlwaysApply
grantPrivilegesAlwaysApplyTrigger = var.SARARG_GrantPrivilegesAlwaysApplyTrigger
grantPrivilegesOnAccount = var.SARARG_GrantPrivilegesOnAccount
}

#---
