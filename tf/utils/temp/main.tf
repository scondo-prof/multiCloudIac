
module "SS" {
  source                                                       = "../_SS_SarargSup"
  snowflakeAccountName                                         = var.snowflakeAccountName
  snowflakeAuthenticator                                       = var.snowflakeAuthenticator
  snowflakeClientIp                                            = var.snowflakeClientIp
  snowflakeClientRequestMfaToken                               = var.snowflakeClientRequestMfaToken
  snowflakeClientStoreTemporaryCredential                      = var.snowflakeClientStoreTemporaryCredential
  snowflakeClientTimeout                                       = var.snowflakeClientTimeout
  snowflakeDisableConsoleLogin                                 = var.snowflakeDisableConsoleLogin
  snowflakeDisableQueryContextCache                            = var.snowflakeDisableQueryContextCache
  snowflakeDisableTelemetry                                    = var.snowflakeDisableTelemetry
  snowflakeDriverTracing                                       = var.snowflakeDriverTracing
  snowflakeExternalBrowserTimeout                              = var.snowflakeExternalBrowserTimeout
  snowflakeHost                                                = var.snowflakeHost
  snowflakeIncludeRetryReason                                  = var.snowflakeIncludeRetryReason
  snowflakeInsecureMode                                        = var.snowflakeInsecureMode
  snowflakeJwtClientTimeout                                    = var.snowflakeJwtClientTimeout
  snowflakeJwtExpireTimeout                                    = var.snowflakeJwtExpireTimeout
  snowflakeKeepSessionAlive                                    = var.snowflakeKeepSessionAlive
  snowflakeLoginTimeout                                        = var.snowflakeLoginTimeout
  snowflakeMaxRetryCount                                       = var.snowflakeMaxRetryCount
  snowflakeOcspFailOpen                                        = var.snowflakeOcspFailOpen
  snowflakeOktaUrl                                             = var.snowflakeOktaUrl
  snowflakeOrganizationName                                    = var.snowflakeOrganizationName
  snowflakeParams                                              = var.snowflakeParams
  snowflakePasscode                                            = var.snowflakePasscode
  snowflakePasscodeInPassword                                  = var.snowflakePasscodeInPassword
  snowflakePassword                                            = var.snowflakePassword
  snowflakePort                                                = var.snowflakePort
  snowflakePreviewFeaturesEnabled                              = var.snowflakePreviewFeaturesEnabled
  snowflakePrivateKey                                          = var.snowflakePrivateKey
  snowflakePrivateKeyPassphrase                                = var.snowflakePrivateKeyPassphrase
  snowflakeProfile                                             = var.snowflakeProfile
  snowflakeProtocol                                            = var.snowflakeProtocol
  snowflakeRequestTimeout                                      = var.snowflakeRequestTimeout
  snowflakeRole                                                = var.snowflakeRole
  snowflakeTmpDirectoryPath                                    = var.snowflakeTmpDirectoryPath
  snowflakeToken                                               = var.snowflakeToken
  snowflakeUser                                                = var.snowflakeUser
  snowflakeValidateDefaultParameters                           = var.snowflakeValidateDefaultParameters
  snowflakeWarehouse                                           = var.snowflakeWarehouse
  resourceName                                                 = var.resourceName
  SS_SARARG_AccountRoleComment                                 = var.SS_SS_SARARG_AccountRoleComment
  SS_SARARG_GrantPrivilegesObjects                             = var.SS_SS_SARARG_GrantPrivilegesObjects
  SS_SARARG_GrantPrivilegesAllPrivileges                       = var.SS_SS_SARARG_GrantPrivilegesAllPrivileges
  SS_SARARG_GrantPrivilegesAlwaysApply                         = var.SS_SS_SARARG_GrantPrivilegesAlwaysApply
  SS_SARARG_GrantPrivilegesAlwaysApplyTrigger                  = var.SS_SS_SARARG_GrantPrivilegesAlwaysApplyTrigger
  SS_SARARG_GrantPrivilegesOnAccount                           = var.SS_SS_SARARG_GrantPrivilegesOnAccount
  SS_SUP_PKS_PasswordLength                                    = var.SS_SS_SUP_PKS_PasswordLength
  SS_SUP_PKS_PasswordKeepers                                   = var.SS_SS_SUP_PKS_PasswordKeepers
  SS_SUP_PKS_PasswordLower                                     = var.SS_SS_SUP_PKS_PasswordLower
  SS_SUP_PKS_PasswordMinLower                                  = var.SS_SS_SUP_PKS_PasswordMinLower
  SS_SUP_PKS_PasswordMinNumeric                                = var.SS_SS_SUP_PKS_PasswordMinNumeric
  SS_SUP_PKS_PasswordMinSpecial                                = var.SS_SS_SUP_PKS_PasswordMinSpecial
  SS_SUP_PKS_PasswordMinUpper                                  = var.SS_SS_SUP_PKS_PasswordMinUpper
  SS_SUP_PKS_PasswordNumeric                                   = var.SS_SS_SUP_PKS_PasswordNumeric
  SS_SUP_PKS_PasswordOverrideSpecial                           = var.SS_SS_SUP_PKS_PasswordOverrideSpecial
  SS_SUP_PKS_PasswordSpecial                                   = var.SS_SS_SUP_PKS_PasswordSpecial
  SS_SUP_PKS_PasswordUpper                                     = var.SS_SS_SUP_PKS_PasswordUpper
  tlsProxy                                                     = var.tlsProxy
  SS_SUP_PKS_PrivateKeyAlgorithm                               = var.SS_SS_SUP_PKS_PrivateKeyAlgorithm
  SS_SUP_PKS_PrivateKeyEcdsaCurve                              = var.SS_SS_SUP_PKS_PrivateKeyEcdsaCurve
  SS_SUP_PKS_PrivateKeyRsaBits                                 = var.SS_SS_SUP_PKS_PrivateKeyRsaBits
  awsRegion                                                    = var.awsRegion
  SS_SUP_PKS_SWV_SecretDescription                             = var.SS_SS_SUP_PKS_SWV_SecretDescription
  SS_SUP_PKS_SWV_SecretKmsKeyId                                = var.SS_SS_SUP_PKS_SWV_SecretKmsKeyId
  SS_SUP_PKS_SWV_SecretNamePrefix                              = var.SS_SS_SUP_PKS_SWV_SecretNamePrefix
  SS_SUP_PKS_SWV_SecretPolicy                                  = var.SS_SS_SUP_PKS_SWV_SecretPolicy
  SS_SUP_PKS_SWV_SecretRecoveryWindowInDays                    = var.SS_SS_SUP_PKS_SWV_SecretRecoveryWindowInDays
  SS_SUP_PKS_SWV_SecretReplica                                 = var.SS_SS_SUP_PKS_SWV_SecretReplica
  SS_SUP_PKS_SWV_SecretForceSecretOverwrite                    = var.SS_SS_SUP_PKS_SWV_SecretForceSecretOverwrite
  projectName                                                  = var.projectName
  createdBy                                                    = var.createdBy
  deployedDate                                                 = var.deployedDate
  tfModule                                                     = var.tfModule
  additionalTags                                               = var.additionalTags
  SS_SUP_PKS_SWV_PrivateKeyP8FilePath                          = var.SS_SS_SUP_PKS_SWV_PrivateKeyP8FilePath
  SS_SUP_PKS_SWV_SecretVersionSecretString                     = var.SS_SS_SUP_PKS_SWV_SecretVersionSecretString
  SS_SUP_PKS_SWV_SecretVersionSecretBinary                     = var.SS_SS_SUP_PKS_SWV_SecretVersionSecretBinary
  SS_SUP_PKS_SWV_SecretVersionStages                           = var.SS_SS_SUP_PKS_SWV_SecretVersionStages
  SS_SUP_SnowflakeUserAbortDetachedQuery                       = var.SS_SS_SUP_SnowflakeUserAbortDetachedQuery
  SS_SUP_SnowflakeUserAutocommit                               = var.SS_SS_SUP_SnowflakeUserAutocommit
  SS_SUP_SnowflakeUserBinaryInputFormat                        = var.SS_SS_SUP_SnowflakeUserBinaryInputFormat
  SS_SUP_SnowflakeUserBinaryOutputFormat                       = var.SS_SS_SUP_SnowflakeUserBinaryOutputFormat
  SS_SUP_SnowflakeUserClientMemoryLimit                        = var.SS_SS_SUP_SnowflakeUserClientMemoryLimit
  SS_SUP_SnowflakeUserClientMetadataRequestUseConnectionCtx    = var.SS_SS_SUP_SnowflakeUserClientMetadataRequestUseConnectionCtx
  SS_SUP_SnowflakeUserClientPrefetchThreads                    = var.SS_SS_SUP_SnowflakeUserClientPrefetchThreads
  SS_SUP_SnowflakeUserClientResultChunkSize                    = var.SS_SS_SUP_SnowflakeUserClientResultChunkSize
  SS_SUP_SnowflakeUserClientResultColumnCaseInsensitive        = var.SS_SS_SUP_SnowflakeUserClientResultColumnCaseInsensitive
  SS_SUP_SnowflakeUserClientSessionKeepAlive                   = var.SS_SS_SUP_SnowflakeUserClientSessionKeepAlive
  SS_SUP_SnowflakeUserClientSessionKeepAliveHeartbeatFrequency = var.SS_SS_SUP_SnowflakeUserClientSessionKeepAliveHeartbeatFrequency
  SS_SUP_SnowflakeUserClientTimestampTypeMapping               = var.SS_SS_SUP_SnowflakeUserClientTimestampTypeMapping
  SS_SUP_SnowflakeUserComment                                  = var.SS_SS_SUP_SnowflakeUserComment
  SS_SUP_SnowflakeUserDateInputFormat                          = var.SS_SS_SUP_SnowflakeUserDateInputFormat
  SS_SUP_SnowflakeUserDateOutputFormat                         = var.SS_SS_SUP_SnowflakeUserDateOutputFormat
  SS_SUP_SnowflakeUserDaysToExpiry                             = var.SS_SS_SUP_SnowflakeUserDaysToExpiry
  SS_SUP_SnowflakeUserDefaultNamespace                         = var.SS_SS_SUP_SnowflakeUserDefaultNamespace
  SS_SUP_SnowflakeUserDefaultSecondaryRolesOption              = var.SS_SS_SUP_SnowflakeUserDefaultSecondaryRolesOption
  SS_SUP_SnowflakeUserDefaultWarehouse                         = var.SS_SS_SUP_SnowflakeUserDefaultWarehouse
  SS_SUP_SnowflakeUserDisableMfa                               = var.SS_SS_SUP_SnowflakeUserDisableMfa
  SS_SUP_SnowflakeUserDisabled                                 = var.SS_SS_SUP_SnowflakeUserDisabled
  SS_SUP_SnowflakeUserDisplayName                              = var.SS_SS_SUP_SnowflakeUserDisplayName
  SS_SUP_SnowflakeUserEmail                                    = var.SS_SS_SUP_SnowflakeUserEmail
  SS_SUP_SnowflakeUserEnableUnloadPhysicalTypeOptimization     = var.SS_SS_SUP_SnowflakeUserEnableUnloadPhysicalTypeOptimization
  SS_SUP_SnowflakeUserEnableUnredactedQuerySyntaxError         = var.SS_SS_SUP_SnowflakeUserEnableUnredactedQuerySyntaxError
  SS_SUP_SnowflakeUserErrorOnNondeterministicMerge             = var.SS_SS_SUP_SnowflakeUserErrorOnNondeterministicMerge
  SS_SUP_SnowflakeUserErrorOnNondeterministicUpdate            = var.SS_SS_SUP_SnowflakeUserErrorOnNondeterministicUpdate
  SS_SUP_SnowflakeUserFirstName                                = var.SS_SS_SUP_SnowflakeUserFirstName
  SS_SUP_SnowflakeUserGeographyOutputFormat                    = var.SS_SS_SUP_SnowflakeUserGeographyOutputFormat
  SS_SUP_SnowflakeUserGeometryOutputFormat                     = var.SS_SS_SUP_SnowflakeUserGeometryOutputFormat
  SS_SUP_SnowflakeUserJdbcTreatDecimalAsInt                    = var.SS_SS_SUP_SnowflakeUserJdbcTreatDecimalAsInt
  SS_SUP_SnowflakeUserJdbcTreatTimestampNtzAsUtc               = var.SS_SS_SUP_SnowflakeUserJdbcTreatTimestampNtzAsUtc
  SS_SUP_SnowflakeUserJdbcUseSessionTimezone                   = var.SS_SS_SUP_SnowflakeUserJdbcUseSessionTimezone
  SS_SUP_SnowflakeUserJsonIndent                               = var.SS_SS_SUP_SnowflakeUserJsonIndent
  SS_SUP_SnowflakeUserLastName                                 = var.SS_SS_SUP_SnowflakeUserLastName
  SS_SUP_SnowflakeUserLockTimeout                              = var.SS_SS_SUP_SnowflakeUserLockTimeout
  SS_SUP_SnowflakeUserLogLevel                                 = var.SS_SS_SUP_SnowflakeUserLogLevel
  SS_SUP_SnowflakeUserLoginName                                = var.SS_SS_SUP_SnowflakeUserLoginName
  SS_SUP_SnowflakeUserMiddleName                               = var.SS_SS_SUP_SnowflakeUserMiddleName
  SS_SUP_SnowflakeUserMinsToBypassMfa                          = var.SS_SS_SUP_SnowflakeUserMinsToBypassMfa
  SS_SUP_SnowflakeUserMinsToUnlock                             = var.SS_SS_SUP_SnowflakeUserMinsToUnlock
  SS_SUP_SnowflakeUserMultiStatementCount                      = var.SS_SS_SUP_SnowflakeUserMultiStatementCount
  SS_SUP_SnowflakeUserMustChangePassword                       = var.SS_SS_SUP_SnowflakeUserMustChangePassword
  SS_SUP_SnowflakeUserNetworkPolicy                            = var.SS_SS_SUP_SnowflakeUserNetworkPolicy
  SS_SUP_SnowflakeUserNoorderSequenceAsDefault                 = var.SS_SS_SUP_SnowflakeUserNoorderSequenceAsDefault
  SS_SUP_SnowflakeUserOdbcTreatDecimalAsInt                    = var.SS_SS_SUP_SnowflakeUserOdbcTreatDecimalAsInt
  SS_SUP_SnowflakeUserPassword                                 = var.SS_SS_SUP_SnowflakeUserPassword
  SS_SUP_SnowflakeUserPreventUnloadToInternalStages            = var.SS_SS_SUP_SnowflakeUserPreventUnloadToInternalStages
  SS_SUP_SnowflakeUserQueryTag                                 = var.SS_SS_SUP_SnowflakeUserQueryTag
  SS_SUP_SnowflakeUserQuotedIdentifiersIgnoreCase              = var.SS_SS_SUP_SnowflakeUserQuotedIdentifiersIgnoreCase
  SS_SUP_SnowflakeUserRowsPerRuleset                           = var.SS_SS_SUP_SnowflakeUserRowsPerRuleset
  SS_SUP_SnowflakeUserRsaPublicKey2                            = var.SS_SS_SUP_SnowflakeUserRsaPublicKey2
  SS_SUP_SnowflakeUserS3StageVpceDnsName                       = var.SS_SS_SUP_SnowflakeUserS3StageVpceDnsName
  SS_SUP_SnowflakeUserSearchPath                               = var.SS_SS_SUP_SnowflakeUserSearchPath
  SS_SUP_SnowflakeUserSimulatedDataSharingConsumer             = var.SS_SS_SUP_SnowflakeUserSimulatedDataSharingConsumer
  SS_SUP_SnowflakeUserStatementQueuedTimeoutInSeconds          = var.SS_SS_SUP_SnowflakeUserStatementQueuedTimeoutInSeconds
  SS_SUP_SnowflakeUserStatementTimeoutInSeconds                = var.SS_SS_SUP_SnowflakeUserStatementTimeoutInSeconds
  SS_SUP_SnowflakeUserStrictJsonOutput                         = var.SS_SS_SUP_SnowflakeUserStrictJsonOutput
  SS_SUP_SnowflakeUserTimeInputFormat                          = var.SS_SS_SUP_SnowflakeUserTimeInputFormat
  SS_SUP_SnowflakeUserTimeOutputFormat                         = var.SS_SS_SUP_SnowflakeUserTimeOutputFormat
  SS_SUP_SnowflakeUserTimestampDayIsAlways24h                  = var.SS_SS_SUP_SnowflakeUserTimestampDayIsAlways24h
  SS_SUP_SnowflakeUserTimestampInputFormat                     = var.SS_SS_SUP_SnowflakeUserTimestampInputFormat
  SS_SUP_SnowflakeUserTimestampLtzOutputFormat                 = var.SS_SS_SUP_SnowflakeUserTimestampLtzOutputFormat
  SS_SUP_SnowflakeUserTimestampNtzOutputFormat                 = var.SS_SS_SUP_SnowflakeUserTimestampNtzOutputFormat
  SS_SUP_SnowflakeUserTimestampOutputFormat                    = var.SS_SS_SUP_SnowflakeUserTimestampOutputFormat
  SS_SUP_SnowflakeUserTimestampTypeMapping                     = var.SS_SS_SUP_SnowflakeUserTimestampTypeMapping
  SS_SUP_SnowflakeUserTimestampTzOutputFormat                  = var.SS_SS_SUP_SnowflakeUserTimestampTzOutputFormat
  SS_SUP_SnowflakeUserTimezone                                 = var.SS_SS_SUP_SnowflakeUserTimezone
  SS_SUP_SnowflakeUserTraceLevel                               = var.SS_SS_SUP_SnowflakeUserTraceLevel
  SS_SUP_SnowflakeUserTransactionAbortOnError                  = var.SS_SS_SUP_SnowflakeUserTransactionAbortOnError
  SS_SUP_SnowflakeUserTransactionDefaultIsolationLevel         = var.SS_SS_SUP_SnowflakeUserTransactionDefaultIsolationLevel
  SS_SUP_SnowflakeUserTwoDigitCenturyStart                     = var.SS_SS_SUP_SnowflakeUserTwoDigitCenturyStart
  SS_SUP_SnowflakeUserUnsupportedDdlAction                     = var.SS_SS_SUP_SnowflakeUserUnsupportedDdlAction
  SS_SUP_SnowflakeUserUsedCachedResult                         = var.SS_SS_SUP_SnowflakeUserUsedCachedResult
  SS_SUP_SnowflakeUserWeekOfYearPolicy                         = var.SS_SS_SUP_SnowflakeUserWeekOfYearPolicy
  SS_SUP_SnowflakeUserWeekStart                                = var.SS_SS_SUP_SnowflakeUserWeekStart
  SS_GrantAccountRoleParentRoleName                            = var.SS_SS_GrantAccountRoleParentRoleName
}

#---

module "SIBS" {
  source                                                                        = "../_SIBS_spcrdfgIuwpaksmsBwvSwv"
  gcpProjectId                                                                  = var.gcpProjectId
  gcpRegion                                                                     = var.gcpRegion
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto                               = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationUserManaged                        = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationUserManaged
  resourceName                                                                  = var.resourceName
  projectName                                                                   = var.projectName
  deployedDate                                                                  = var.deployedDate
  createdBy                                                                     = var.createdBy
  tfModule                                                                      = var.tfModule
  additionalTags                                                                = var.additionalTags
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretAnnotations                                   = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretAnnotations
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionAliases                                = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionAliases
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionDestroyTtl                             = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionDestroyTtl
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTopics                                        = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTopics
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretExpireTime                                    = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretExpireTime
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTtl                                           = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTtl
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretRotation                                      = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretRotation
  SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionObjects                                = var.SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionObjects
  SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled                  = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled
  SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  SIBS_SPCRDFG_CloudBuildTriggerServiceAccountsRoleId                           = var.SS_SIBS_SPCRDFG_CloudBuildTriggerServiceAccountsRoleId
  SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage                 = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage
  SIBS_SPCRDFG_CloudBuildTriggerYamlPath                                        = var.SS_SIBS_SPCRDFG_CloudBuildTriggerYamlPath
  SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName                                  = var.SS_SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName
  SIBS_SPCRDFG_CloudBuildTriggerBranchName                                      = var.SS_SIBS_SPCRDFG_CloudBuildTriggerBranchName
  SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName                                = var.SS_SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName
  SIBS_SPCRDFG_CloudBuildTriggerBucketName                                      = var.SS_SIBS_SPCRDFG_CloudBuildTriggerBucketName
  SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests                               = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests
  SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout                                  = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout
  SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber                                       = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber
  SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances                                     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances
  SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances                                     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances
  SIBS_SPCRDFG_CRDPRFG_CloudRunVpcConnector                                     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunVpcConnector
  SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus                                    = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus
  SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory                                   = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory
  SIBS_SPCRDFG_CRDPRFG_CloudRunEnvVariableName                                  = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunEnvVariableName
  SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions                 = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsEnabled                        = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsEnabled
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels                          = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy                  = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity                       = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation                  = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation
  SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent         = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent                = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled                    = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy              = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity                   = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation              = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation
  SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent      = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent             = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled                    = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy              = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity                   = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity
  SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation              = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto                     = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged              = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretAnnotations                         = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretAnnotations
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionAliases                      = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionAliases
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl                   = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTopics                              = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTopics
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretExpireTime                          = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretExpireTime
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTtl                                 = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTtl
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretRotation                            = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretRotation
  SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects                      = var.SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects
  SIBS_SPCRDFG_CRDPFG_ServiceAccountDisabled                                    = var.SS_SIBS_SPCRDFG_CRDPFG_ServiceAccountDisabled
  SIBS_SPCRDFG_CRDPFG_ServiceAccountCreateIgnoreAlreadyExists                   = var.SS_SIBS_SPCRDFG_CRDPFG_ServiceAccountCreateIgnoreAlreadyExists
  SIBS_SPCRDFG_CRDPFG_ServiceAccountRoleStage                                   = var.SS_SIBS_SPCRDFG_CRDPFG_ServiceAccountRoleStage
  SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests                                = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests
  SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout                                   = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout
  SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber                                        = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber
  SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances                                      = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances
  SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances                                      = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances
  SIBS_SPCRDFG_CRDPFG_CloudRunVpcConnector                                      = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunVpcConnector
  SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus                                     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus
  SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory                                    = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory
  SIBS_SPCRDFG_CRDPFG_CloudRunEnvVariableName                                   = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunEnvVariableName
  SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions                  = var.SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions
  SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyEnabled                            = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyEnabled
  SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels              = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels
  SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy                      = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy
  SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity                           = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity
  SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyDocumentation                      = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyDocumentation
  SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent       = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent              = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyEnabled                             = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyEnabled
  SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyAlertStrategy                       = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyAlertStrategy
  SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity                            = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity
  SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyDocumentation                       = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyDocumentation
  SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent          = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent                 = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent
  SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyEnabled                             = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyEnabled
  SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyAlertStrategy                       = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyAlertStrategy
  SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity                            = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity
  SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyDocumentation                       = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyDocumentation
  awsRegion                                                                     = var.awsRegion
  SIBS_IUWPAKSMS_UWP_IamUserPath                                                = var.SS_SIBS_IUWPAKSMS_UWP_IamUserPath
  SIBS_IUWPAKSMS_UWP_IamUserPermissionBoundary                                  = var.SS_SIBS_IUWPAKSMS_UWP_IamUserPermissionBoundary
  SIBS_IUWPAKSMS_UWP_IamUserForceDestroy                                        = var.SS_SIBS_IUWPAKSMS_UWP_IamUserForceDestroy
  SIBS_IUWPAKSMS_UWP_IamPolicyDescription                                       = var.SS_SIBS_IUWPAKSMS_UWP_IamPolicyDescription
  SIBS_IUWPAKSMS_UWP_IamPolicyNamePrefix                                        = var.SS_SIBS_IUWPAKSMS_UWP_IamPolicyNamePrefix
  SIBS_IUWPAKSMS_UWP_IamPolicyPath                                              = var.SS_SIBS_IUWPAKSMS_UWP_IamPolicyPath
  SIBS_IUWPAKSMS_UWP_IamPolicyVersion                                           = var.SS_SIBS_IUWPAKSMS_UWP_IamPolicyVersion
  SIBS_IUWPAKSMS_UWP_IamPolicyDocumentStatements                                = var.SS_SIBS_IUWPAKSMS_UWP_IamPolicyDocumentStatements
  SIBS_IUWPAKSMS_IamAccessKeyPgpKey                                             = var.SS_SIBS_IUWPAKSMS_IamAccessKeyPgpKey
  SIBS_IUWPAKSMS_IamAccessKeyStatus                                             = var.SS_SIBS_IUWPAKSMS_IamAccessKeyStatus
  SIBS_IUWPAKSMS_SWV_SecretDescription                                          = var.SS_SIBS_IUWPAKSMS_SWV_SecretDescription
  SIBS_IUWPAKSMS_SWV_SecretKmsKeyId                                             = var.SS_SIBS_IUWPAKSMS_SWV_SecretKmsKeyId
  SIBS_IUWPAKSMS_SWV_SecretNamePrefix                                           = var.SS_SIBS_IUWPAKSMS_SWV_SecretNamePrefix
  SIBS_IUWPAKSMS_SWV_SecretPolicy                                               = var.SS_SIBS_IUWPAKSMS_SWV_SecretPolicy
  SIBS_IUWPAKSMS_SWV_SecretRecoveryWindowInDays                                 = var.SS_SIBS_IUWPAKSMS_SWV_SecretRecoveryWindowInDays
  SIBS_IUWPAKSMS_SWV_SecretReplica                                              = var.SS_SIBS_IUWPAKSMS_SWV_SecretReplica
  SIBS_IUWPAKSMS_SWV_SecretForceSecretOverwrite                                 = var.SS_SIBS_IUWPAKSMS_SWV_SecretForceSecretOverwrite
  SIBS_IUWPAKSMS_SWV_SecretVersionSecretString                                  = var.SS_SIBS_IUWPAKSMS_SWV_SecretVersionSecretString
  SIBS_IUWPAKSMS_SWV_SecretVersionSecretBinary                                  = var.SS_SIBS_IUWPAKSMS_SWV_SecretVersionSecretBinary
  SIBS_IUWPAKSMS_SWV_SecretVersionStages                                        = var.SS_SIBS_IUWPAKSMS_SWV_SecretVersionStages
  SIBS_BWV_S3BucketPrefix                                                       = var.SS_SIBS_BWV_S3BucketPrefix
  SIBS_BWV_S3BucketForceDestroy                                                 = var.SS_SIBS_BWV_S3BucketForceDestroy
  SIBS_BWV_S3BucketObjectLockEnabled                                            = var.SS_SIBS_BWV_S3BucketObjectLockEnabled
  SIBS_BWV_S3BucketVersioningConfigurationStatus                                = var.SS_SIBS_BWV_S3BucketVersioningConfigurationStatus
  SIBS_BWV_S3BucketVersioningConfigurationMfaDelete                             = var.SS_SIBS_BWV_S3BucketVersioningConfigurationMfaDelete
  SIBS_BWV_S3BucketVersioningExpectedBucketOwner                                = var.SS_SIBS_BWV_S3BucketVersioningExpectedBucketOwner
  SIBS_BWV_S3BucketVersioningMfa                                                = var.SS_SIBS_BWV_S3BucketVersioningMfa
  SIBS_SWV_Staging_SecretDescription                                            = var.SS_SIBS_SWV_Staging_SecretDescription
  SIBS_SWV_Staging_SecretKmsKeyId                                               = var.SS_SIBS_SWV_Staging_SecretKmsKeyId
  SIBS_SWV_Staging_SecretNamePrefix                                             = var.SS_SIBS_SWV_Staging_SecretNamePrefix
  SIBS_SWV_Staging_SecretPolicy                                                 = var.SS_SIBS_SWV_Staging_SecretPolicy
  SIBS_SWV_Staging_SecretRecoveryWindowInDays                                   = var.SS_SIBS_SWV_Staging_SecretRecoveryWindowInDays
  SIBS_SWV_Staging_SecretReplica                                                = var.SS_SIBS_SWV_Staging_SecretReplica
  SIBS_SWV_Staging_SecretForceSecretOverwrite                                   = var.SS_SIBS_SWV_Staging_SecretForceSecretOverwrite
  SIBS_SWV_Staging_SecretVersionSecretString                                    = var.SS_SIBS_SWV_Staging_SecretVersionSecretString
  SIBS_SWV_Staging_SecretVersionSecretBinary                                    = var.SS_SIBS_SWV_Staging_SecretVersionSecretBinary
  SIBS_SWV_Staging_SecretVersionStages                                          = var.SS_SIBS_SWV_Staging_SecretVersionStages
  SIBS_SWV_Prod_SecretDescription                                               = var.SS_SIBS_SWV_Prod_SecretDescription
  SIBS_SWV_Prod_SecretKmsKeyId                                                  = var.SS_SIBS_SWV_Prod_SecretKmsKeyId
  SIBS_SWV_Prod_SecretNamePrefix                                                = var.SS_SIBS_SWV_Prod_SecretNamePrefix
  SIBS_SWV_Prod_SecretPolicy                                                    = var.SS_SIBS_SWV_Prod_SecretPolicy
  SIBS_SWV_Prod_SecretRecoveryWindowInDays                                      = var.SS_SIBS_SWV_Prod_SecretRecoveryWindowInDays
  SIBS_SWV_Prod_SecretReplica                                                   = var.SS_SIBS_SWV_Prod_SecretReplica
  SIBS_SWV_Prod_SecretForceSecretOverwrite                                      = var.SS_SIBS_SWV_Prod_SecretForceSecretOverwrite
  SIBS_SWV_Prod_SecretVersionSecretString                                       = var.SS_SIBS_SWV_Prod_SecretVersionSecretString
  SIBS_SWV_Prod_SecretVersionSecretBinary                                       = var.SS_SIBS_SWV_Prod_SecretVersionSecretBinary
  SIBS_SWV_Prod_SecretVersionStages                                             = var.SS_SIBS_SWV_Prod_SecretVersionStages
}

#---
