
module "PKS" {
  source                             = "../_PKS_privateKeySwv"
  PKS_PasswordLength                 = var.SUP_PKS_PasswordLength
  PKS_PasswordKeepers                = var.SUP_PKS_PasswordKeepers
  PKS_PasswordLower                  = var.SUP_PKS_PasswordLower
  PKS_PasswordMinLower               = var.SUP_PKS_PasswordMinLower
  PKS_PasswordMinNumeric             = var.SUP_PKS_PasswordMinNumeric
  PKS_PasswordMinSpecial             = var.SUP_PKS_PasswordMinSpecial
  PKS_PasswordMinUpper               = var.SUP_PKS_PasswordMinUpper
  PKS_PasswordNumeric                = var.SUP_PKS_PasswordNumeric
  PKS_PasswordOverrideSpecial        = var.SUP_PKS_PasswordOverrideSpecial
  PKS_PasswordSpecial                = var.SUP_PKS_PasswordSpecial
  PKS_PasswordUpper                  = var.SUP_PKS_PasswordUpper
  tlsProxy                           = var.tlsProxy
  PKS_PrivateKeyAlgorithm            = var.SUP_PKS_PrivateKeyAlgorithm
  PKS_PrivateKeyEcdsaCurve           = var.SUP_PKS_PrivateKeyEcdsaCurve
  PKS_PrivateKeyRsaBits              = var.SUP_PKS_PrivateKeyRsaBits
  awsRegion                          = var.awsRegion
  PKS_SWV_SecretDescription          = var.SUP_PKS_SWV_SecretDescription
  PKS_SWV_SecretKmsKeyId             = var.SUP_PKS_SWV_SecretKmsKeyId
  PKS_SWV_SecretNamePrefix           = var.SUP_PKS_SWV_SecretNamePrefix
  resourceName                       = var.resourceName
  PKS_SWV_SecretPolicy               = var.SUP_PKS_SWV_SecretPolicy
  PKS_SWV_SecretRecoveryWindowInDays = var.SUP_PKS_SWV_SecretRecoveryWindowInDays
  PKS_SWV_SecretReplica              = var.SUP_PKS_SWV_SecretReplica
  PKS_SWV_SecretForceSecretOverwrite = var.SUP_PKS_SWV_SecretForceSecretOverwrite
  projectName                        = var.projectName
  createdBy                          = var.createdBy
  deployedDate                       = var.deployedDate
  tfModule                           = var.tfModule
  additionalTags                     = var.additionalTags
  PKS_SWV_PrivateKeyP8FilePath       = var.SUP_PKS_SWV_PrivateKeyP8FilePath
  PKS_SWV_SecretVersionSecretString  = var.SUP_PKS_SWV_SecretVersionSecretString
  PKS_SWV_SecretVersionSecretBinary  = var.SUP_PKS_SWV_SecretVersionSecretBinary
  PKS_SWV_SecretVersionStages        = var.SUP_PKS_SWV_SecretVersionStages
}

#---

module "snowflakeUser" {
  source                                       = "../../snowflake/principals/genericUser"
  snowflakeAccountName                         = var.snowflakeAccountName
  snowflakeAuthenticator                       = var.snowflakeAuthenticator
  snowflakeClientIp                            = var.snowflakeClientIp
  snowflakeClientRequestMfaToken               = var.snowflakeClientRequestMfaToken
  snowflakeClientStoreTemporaryCredential      = var.snowflakeClientStoreTemporaryCredential
  snowflakeClientTimeout                       = var.snowflakeClientTimeout
  snowflakeDisableConsoleLogin                 = var.snowflakeDisableConsoleLogin
  snowflakeDisableQueryContextCache            = var.snowflakeDisableQueryContextCache
  snowflakeDisableTelemetry                    = var.snowflakeDisableTelemetry
  snowflakeDriverTracing                       = var.snowflakeDriverTracing
  snowflakeExternalBrowserTimeout              = var.snowflakeExternalBrowserTimeout
  snowflakeHost                                = var.snowflakeHost
  snowflakeIncludeRetryReason                  = var.snowflakeIncludeRetryReason
  snowflakeInsecureMode                        = var.snowflakeInsecureMode
  snowflakeJwtClientTimeout                    = var.snowflakeJwtClientTimeout
  snowflakeJwtExpireTimeout                    = var.snowflakeJwtExpireTimeout
  snowflakeKeepSessionAlive                    = var.snowflakeKeepSessionAlive
  snowflakeLoginTimeout                        = var.snowflakeLoginTimeout
  snowflakeMaxRetryCount                       = var.snowflakeMaxRetryCount
  snowflakeOcspFailOpen                        = var.snowflakeOcspFailOpen
  snowflakeOktaUrl                             = var.snowflakeOktaUrl
  snowflakeOrganizationName                    = var.snowflakeOrganizationName
  snowflakeParams                              = var.snowflakeParams
  snowflakePasscode                            = var.snowflakePasscode
  snowflakePasscodeInPassword                  = var.snowflakePasscodeInPassword
  snowflakePassword                            = var.snowflakePassword
  snowflakePort                                = var.snowflakePort
  snowflakePreviewFeaturesEnabled              = var.snowflakePreviewFeaturesEnabled
  snowflakePrivateKey                          = var.snowflakePrivateKey
  snowflakePrivateKeyPassphrase                = var.snowflakePrivateKeyPassphrase
  snowflakeProfile                             = var.snowflakeProfile
  snowflakeProtocol                            = var.snowflakeProtocol
  snowflakeRequestTimeout                      = var.snowflakeRequestTimeout
  snowflakeRole                                = var.snowflakeRole
  snowflakeTmpDirectoryPath                    = var.snowflakeTmpDirectoryPath
  snowflakeToken                               = var.snowflakeToken
  snowflakeUser                                = var.snowflakeUser
  snowflakeValidateDefaultParameters           = var.snowflakeValidateDefaultParameters
  snowflakeWarehouse                           = var.snowflakeWarehouse
  resourceName                                 = var.resourceName
  userAbortDetachedQuery                       = var.SUP_SnowflakeUserAbortDetachedQuery
  userAutocommit                               = var.SUP_SnowflakeUserAutocommit
  userBinaryInputFormat                        = var.SUP_SnowflakeUserBinaryInputFormat
  userBinaryOutputFormat                       = var.SUP_SnowflakeUserBinaryOutputFormat
  userClientMemoryLimit                        = var.SUP_SnowflakeUserClientMemoryLimit
  userClientMetadataRequestUseConnectionCtx    = var.SUP_SnowflakeUserClientMetadataRequestUseConnectionCtx
  userClientPrefetchThreads                    = var.SUP_SnowflakeUserClientPrefetchThreads
  userClientResultChunkSize                    = var.SUP_SnowflakeUserClientResultChunkSize
  userClientResultColumnCaseInsensitive        = var.SUP_SnowflakeUserClientResultColumnCaseInsensitive
  userClientSessionKeepAlive                   = var.SUP_SnowflakeUserClientSessionKeepAlive
  userClientSessionKeepAliveHeartbeatFrequency = var.SUP_SnowflakeUserClientSessionKeepAliveHeartbeatFrequency
  userClientTimestampTypeMapping               = var.SUP_SnowflakeUserClientTimestampTypeMapping
  userComment                                  = var.SUP_SnowflakeUserComment
  userDateInputFormat                          = var.SUP_SnowflakeUserDateInputFormat
  userDateOutputFormat                         = var.SUP_SnowflakeUserDateOutputFormat
  userDaysToExpiry                             = var.SUP_SnowflakeUserDaysToExpiry
  userDefaultNamespace                         = var.SUP_SnowflakeUserDefaultNamespace
  userDefaultRole                              = var.SUP_SnowflakeUserDefaultRole
  userDefaultSecondaryRolesOption              = var.SUP_SnowflakeUserDefaultSecondaryRolesOption
  userDefaultWarehouse                         = var.SUP_SnowflakeUserDefaultWarehouse
  userDisableMfa                               = var.SUP_SnowflakeUserDisableMfa
  userDisabled                                 = var.SUP_SnowflakeUserDisabled
  userDisplayName                              = var.SUP_SnowflakeUserDisplayName
  userEmail                                    = var.SUP_SnowflakeUserEmail
  userEnableUnloadPhysicalTypeOptimization     = var.SUP_SnowflakeUserEnableUnloadPhysicalTypeOptimization
  userEnableUnredactedQuerySyntaxError         = var.SUP_SnowflakeUserEnableUnredactedQuerySyntaxError
  userErrorOnNondeterministicMerge             = var.SUP_SnowflakeUserErrorOnNondeterministicMerge
  userErrorOnNondeterministicUpdate            = var.SUP_SnowflakeUserErrorOnNondeterministicUpdate
  userFirstName                                = var.SUP_SnowflakeUserFirstName
  userGeographyOutputFormat                    = var.SUP_SnowflakeUserGeographyOutputFormat
  userGeometryOutputFormat                     = var.SUP_SnowflakeUserGeometryOutputFormat
  userJdbcTreatDecimalAsInt                    = var.SUP_SnowflakeUserJdbcTreatDecimalAsInt
  userJdbcTreatTimestampNtzAsUtc               = var.SUP_SnowflakeUserJdbcTreatTimestampNtzAsUtc
  userJdbcUseSessionTimezone                   = var.SUP_SnowflakeUserJdbcUseSessionTimezone
  userJsonIndent                               = var.SUP_SnowflakeUserJsonIndent
  userLastName                                 = var.SUP_SnowflakeUserLastName
  userLockTimeout                              = var.SUP_SnowflakeUserLockTimeout
  userLogLevel                                 = var.SUP_SnowflakeUserLogLevel
  userLoginName                                = var.SUP_SnowflakeUserLoginName
  userMiddleName                               = var.SUP_SnowflakeUserMiddleName
  userMinsToBypassMfa                          = var.SUP_SnowflakeUserMinsToBypassMfa
  userMinsToUnlock                             = var.SUP_SnowflakeUserMinsToUnlock
  userMultiStatementCount                      = var.SUP_SnowflakeUserMultiStatementCount
  userMustChangePassword                       = var.SUP_SnowflakeUserMustChangePassword
  userNetworkPolicy                            = var.SUP_SnowflakeUserNetworkPolicy
  userNoorderSequenceAsDefault                 = var.SUP_SnowflakeUserNoorderSequenceAsDefault
  userOdbcTreatDecimalAsInt                    = var.SUP_SnowflakeUserOdbcTreatDecimalAsInt
  userPassword                                 = var.SUP_SnowflakeUserPassword
  userPreventUnloadToInternalStages            = var.SUP_SnowflakeUserPreventUnloadToInternalStages
  userQueryTag                                 = var.SUP_SnowflakeUserQueryTag
  userQuotedIdentifiersIgnoreCase              = var.SUP_SnowflakeUserQuotedIdentifiersIgnoreCase
  userRowsPerRuleset                           = var.SUP_SnowflakeUserRowsPerRuleset
  userRsaPublicKey                             = var.SUP_SnowflakeUserRsaPublicKey
  userRsaPublicKey2                            = var.SUP_SnowflakeUserRsaPublicKey2
  userS3StageVpceDnsName                       = var.SUP_SnowflakeUserS3StageVpceDnsName
  userSearchPath                               = var.SUP_SnowflakeUserSearchPath
  userSimulatedDataSharingConsumer             = var.SUP_SnowflakeUserSimulatedDataSharingConsumer
  userStatementQueuedTimeoutInSeconds          = var.SUP_SnowflakeUserStatementQueuedTimeoutInSeconds
  userStatementTimeoutInSeconds                = var.SUP_SnowflakeUserStatementTimeoutInSeconds
  userStrictJsonOutput                         = var.SUP_SnowflakeUserStrictJsonOutput
  userTimeInputFormat                          = var.SUP_SnowflakeUserTimeInputFormat
  userTimeOutputFormat                         = var.SUP_SnowflakeUserTimeOutputFormat
  userTimestampDayIsAlways24h                  = var.SUP_SnowflakeUserTimestampDayIsAlways24h
  userTimestampInputFormat                     = var.SUP_SnowflakeUserTimestampInputFormat
  userTimestampLtzOutputFormat                 = var.SUP_SnowflakeUserTimestampLtzOutputFormat
  userTimestampNtzOutputFormat                 = var.SUP_SnowflakeUserTimestampNtzOutputFormat
  userTimestampOutputFormat                    = var.SUP_SnowflakeUserTimestampOutputFormat
  userTimestampTypeMapping                     = var.SUP_SnowflakeUserTimestampTypeMapping
  userTimestampTzOutputFormat                  = var.SUP_SnowflakeUserTimestampTzOutputFormat
  userTimezone                                 = var.SUP_SnowflakeUserTimezone
  userTraceLevel                               = var.SUP_SnowflakeUserTraceLevel
  userTransactionAbortOnError                  = var.SUP_SnowflakeUserTransactionAbortOnError
  userTransactionDefaultIsolationLevel         = var.SUP_SnowflakeUserTransactionDefaultIsolationLevel
  userTwoDigitCenturyStart                     = var.SUP_SnowflakeUserTwoDigitCenturyStart
  userUnsupportedDdlAction                     = var.SUP_SnowflakeUserUnsupportedDdlAction
  userUsedCachedResult                         = var.SUP_SnowflakeUserUsedCachedResult
  userWeekOfYearPolicy                         = var.SUP_SnowflakeUserWeekOfYearPolicy
  userWeekStart                                = var.SUP_SnowflakeUserWeekStart
}

#---
