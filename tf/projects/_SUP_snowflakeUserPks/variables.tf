variable "tlsProxy" { #https://registry.terraform.io/providers/hashicorp/tls/latest/docs#optional
  type = object({
    from_env = optional(bool, null)
    password = optional(string, null)
    url      = optional(string, null)
    username = optional(string, null)
  })
  default = null
}

variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "Scott Condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs#schema

variable "snowflakeAccountName" {
  type    = string
  default = null
}

variable "snowflakeAuthenticator" {
  type = string
  validation {
    condition = var.snowflakeAuthenticator == null || can(contains([
      "SNOWFLAKE",
      "OAUTH",
      "EXTERNALBROWSER",
      "OKTA",
      "SNOWFLAKE_JWT",
      "TOKENACCESSOR",
      "USERNAMEPASSWORDMFA"
    ], var.snowflakeAuthenticator))
    error_message = "Valid inputs for | variable: var.snowflakeAuthenticator | are: SNOWFLAKE , OAUTH , EXTERNALBROWSER , OKTA , SNOWFLAKE_JWT , TOKENACCESSOR , USERNAMEPASSWORDMFA"
  }
  default = null
}

variable "snowflakeClientIp" {
  type    = string
  default = null
}

variable "snowflakeClientRequestMfaToken" {
  type    = string
  default = null
}

variable "snowflakeClientStoreTemporaryCredential" {
  type    = string
  default = null
}

variable "snowflakeClientTimeout" {
  type    = number
  default = null
}

variable "snowflakeDisableConsoleLogin" {
  type    = string
  default = null
}

variable "snowflakeDisableQueryContextCache" {
  type    = bool
  default = null
}

variable "snowflakeDisableTelemetry" {
  type    = bool
  default = null
}

variable "snowflakeDriverTracing" {
  type = string
  validation {
    condition = var.snowflakeDriverTracing == null || can(contains([
      "trace",
      "debug",
      "info",
      "print",
      "warning",
      "err",
      "fatal",
      "panic"
    ], var.snowflakeDriverTracing))
    error_message = "Valid inputs for | variable: var.snowflakeDriverTracing | are: trace , debug , info , print , warning , error , fatal , panic"
  }
  default = null
}

variable "snowflakeExternalBrowserTimeout" {
  type    = number
  default = null
}

variable "snowflakeHost" {
  type    = string
  default = null
}

variable "snowflakeIncludeRetryReason" {
  type    = string
  default = null
}

variable "snowflakeInsecureMode" {
  type    = bool
  default = null
}

variable "snowflakeJwtClientTimeout" {
  type    = number
  default = null
}

variable "snowflakeJwtExpireTimeout" {
  type    = number
  default = null
}

variable "snowflakeKeepSessionAlive" {
  type    = bool
  default = null
}

variable "snowflakeLoginTimeout" {
  type    = number
  default = null
}

variable "snowflakeMaxRetryCount" {
  type    = number
  default = null
}

variable "snowflakeOcspFailOpen" {
  type    = string
  default = null
}

variable "snowflakeOktaUrl" {
  type    = string
  default = null
}

variable "snowflakeOrganizationName" {
  type    = string
  default = null
}

variable "snowflakeParams" {
  type    = map(string)
  default = null
}

variable "snowflakePasscode" {
  type    = string
  default = null
}

variable "snowflakePasscodeInPassword" {
  type    = bool
  default = null
}

variable "snowflakePassword" {
  type      = string
  default   = null
  sensitive = true
}

variable "snowflakePort" {
  type    = number
  default = null
}

variable "snowflakePreveiwFeaturesEnabled" {
  type    = list(string)
  default = null
}

variable "snowflakePrivateKey" {
  type      = string
  default   = null
  sensitive = true
}

variable "snowflakePrivateKeyPassphrase" {
  type      = string
  default   = null
  sensitive = true
}

variable "snowflakeProfile" {
  type    = string
  default = null
}

variable "snowflakeProtocol" {
  type = string
  validation {
    condition = var.snowflakeProtocol == null || can(contains([
      "http",
      "https"
    ], var.snowflakeProtocol))
    error_message = "Valid inputs for | variable: var.snowflakeProtocol | are: http , https"
  }
  default = null
}

variable "snowflakeRequestTimeout" {
  type    = number
  default = null
}

variable "snowflakeRole" {
  type    = string
  default = null
}

variable "snowflakeTmpDirectoryPath" {
  type    = string
  default = null
}

variable "snowflakeToken" {
  type      = string
  default   = null
  sensitive = true
}


# variable "snowflakeTokenAccessor" { #https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs#nestedblock--token_accessor
#   type = object({
#     client_id      = string
#     client_secret  = string
#     redirect_uri   = string
#     refresh_token  = string
#     token_endpoint = string
#   })
#   default   = null
#   sensitive = true
# }

variable "snowflakeUser" {
  type    = string
  default = null
}

variable "snowflakeValidateDefaultParameters" {
  type    = string
  default = null
}

variable "snowflakeWarehouse" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password#schema

variable "SUP_PKS_PasswordLength" {
  type = number
  validation {
    condition     = var.SUP_PKS_PasswordLength >= 1 && var.SUP_PKS_PasswordLength <= 1024
    error_message = "var.SUP_PKS_PasswordLength must be Greater than or Equal to 1 AND Less Than or Equal to 1024"
  }
}

variable "SUP_PKS_PasswordKeepers" {
  type    = map(string)
  default = null
}

variable "SUP_PKS_PasswordLower" {
  type    = bool
  default = null
}

variable "SUP_PKS_PasswordMinLower" {
  type = number
  validation {
    condition     = var.SUP_PKS_PasswordMinLower == null || can(var.SUP_PKS_PasswordMinLower >= 0 && var.SUP_PKS_PasswordMinLower <= 1024)
    error_message = "var.SUP_PKS_PasswordMinLower must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "SUP_PKS_PasswordMinNumeric" {
  type = number
  validation {
    condition     = var.SUP_PKS_PasswordMinNumeric == null || can(var.SUP_PKS_PasswordMinNumeric >= 0 && var.SUP_PKS_PasswordMinNumeric <= 1024)
    error_message = "var.SUP_PKS_PasswordMinNumeric must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "SUP_PKS_PasswordMinSpecial" {
  type = number
  validation {
    condition     = var.SUP_PKS_PasswordMinSpecial == null || can(var.SUP_PKS_PasswordMinSpecial >= 0 && var.SUP_PKS_PasswordMinSpecial <= 1024)
    error_message = "var.SUP_PKS_PasswordMinSpecial must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "SUP_PKS_PasswordMinUpper" {
  type = number
  validation {
    condition     = var.SUP_PKS_PasswordMinUpper == null || can(var.SUP_PKS_PasswordMinUpper >= 0 && var.SUP_PKS_PasswordMinUpper <= 1024)
    error_message = "var.SUP_PKS_PasswordMinUpper must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "SUP_PKS_PasswordNumeric" {
  type    = bool
  default = null
}

variable "SUP_PKS_PasswordOverrideSpecial" {
  type    = string
  default = null
}

variable "SUP_PKS_PasswordSpecial" {
  type    = bool
  default = null
}

variable "SUP_PKS_PasswordUpper" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#schema

variable "SUP_PKS_PrivateKeyAlgorithm" {
  type = string
  validation {
    condition = contains([
      "RSA",
      "ECDSA",
      "ED25519"
    ], var.SUP_PKS_PrivateKeyAlgorithm)
    error_message = "Valid inputs for | variable: var.SUP_PKS_PrivateKeyAlgorithm | are: RSA, ECDSA, ED25519"
  }
}

variable "SUP_PKS_PrivateKeyEcdsaCurve" {
  type = string
  validation {
    condition = var.SUP_PKS_PrivateKeyEcdsaCurve == null || can(contains([
      "P224",
      "P256",
      "P384",
      "P521"
    ], var.SUP_PKS_PrivateKeyEcdsaCurve))
    error_message = "Valid inputs for | variable: var.SUP_PKS_PrivateKeyEcdsaCurve | are: P224, P256, P384, P521"
  }
  default = null
}

variable "SUP_PKS_PrivateKeyRsaBits" {
  type    = number
  default = null
}




variable "SUP_PKS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SUP_PKS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "SUP_PKS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = 7
}

variable "SUP_PKS_SWV_SecretReplica" {
  type = object({
    kms_key_id = string
    region     = string
  })
  default = null
}

variable "SUP_PKS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = true
}

variable "SUP_PKS_privateKeyP8FilePath" {
  type    = string
  default = null
}

variable "SUP_PKS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SUP_PKS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SUP_PKS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}




#---


#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/user#schema

variable "SUP_SnowflakeUserAbortDetachedQuery" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserAutocommit" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserBinaryInputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserBinaryOutputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserClientMemoryLimit" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserClientMetadataRequestUseConnectionCtx" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserClientPrefetchThreads" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserClientResultChunkSize" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserClientResultColumnCaseInsensitive" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserClientSessionKeepAlive" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserClientSessionKeepAliveHeartbeatFrequency" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserClientTimestampTypeMapping" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserComment" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserDateInputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserDateOutputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserDaysToExpiry" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserDefaultNamespace" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserDefaultRole" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserDefaultSecondaryRolesOption" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserDefaultWarehouse" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserDisableMfa" {
  type = string
  validation {
    condition = var.SUP_SnowflakeUserDisableMfa == null || can(contains([
      "true",
      "false"
    ], var.SUP_SnowflakeUserDisableMfa))
    error_message = "Valid inputs for | variable: var.SUP_SnowflakeUserDisableMfa | are: true , false"
  }
  default = null
}

variable "SUP_SnowflakeUserDisabled" {
  type = string
  validation {
    condition = var.SUP_SnowflakeUserDisabled == null || can(contains([
      "true",
      "false"
    ], var.SUP_SnowflakeUserDisabled))
    error_message = "Valid inputs for | variable: var.SUP_SnowflakeUserDisabled | are: true , false"
  }
  default = null
}

variable "SUP_SnowflakeUserDisplayName" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserEmail" {
  type      = string
  default   = null
  sensitive = true
}

variable "SUP_SnowflakeUserEnableUnloadPhysicalTypeOptimization" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserEnableUnredactedQuerySyntaxError" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserErrorOnNondeterministicMerge" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserErrorOnNondeterministicUpdate" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserFirstName" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserGeographyOutputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserGeometryOutputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserJdbcTreatDecimalAsInt" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserJdbcTreatTimestampNtzAsUtc" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserJdbcUseSessionTimezone" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserJsonIndent" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserLastName" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserLockTimeout" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserLogLevel" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserLoginName" {
  type      = string
  default   = null
  sensitive = true
}

variable "SUP_SnowflakeUserMiddleName" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserMinsToBypassMfa" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserMinsToUnlock" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserMultiStatementCount" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserMustChangePassword" {
  type = string
  validation {
    condition = var.SUP_SnowflakeUserMustChangePassword == null || can(contains([
      "true",
      "false"
    ], var.SUP_SnowflakeUserMustChangePassword))
    error_message = "Valid inputs for | variable: var.SUP_SnowflakeUserMustChangePassword | are: true , false"
  }
  default = null
}

variable "SUP_SnowflakeUserNetworkPolicy" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserNoorderSequenceAsDefault" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserOdbcTreatDecimalAsInt" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserPassword" {
  type      = string
  default   = null
  sensitive = true
}

variable "SUP_SnowflakeUserPreventUnloadToInternalStages" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserQueryTag" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserQuotedIdentifiersIgnoreCase" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserRowsPerRuleset" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserRsaPublicKey2" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserS3StageVpceDnsName" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserSearchPath" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserSimulatedDataSharingConsumer" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserStatementQueuedTimeoutInSeconds" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserStatementTimeoutInSeconds" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserStrictJsonOutput" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserTimeInputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTimeOutputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTimestampDayIsAlways24h" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserTimestampInputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTimestampLtzOutputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTimestampNtzOutputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTimestampOutputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTimestampTypeMapping" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTimestampTzOutputFormat" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTimezone" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTraceLevel" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTransactionAbortOnError" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserTransactionDefaultIsolationLevel" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserTwoDigitCenturyStart" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserUnsupportedDdlAction" {
  type    = string
  default = null
}

variable "SUP_SnowflakeUserUsedCachedResult" {
  type    = bool
  default = null
}

variable "SUP_SnowflakeUserWeekOfYearPolicy" {
  type    = number
  default = null
}

variable "SUP_SnowflakeUserWeekStart" {
  type = number
  validation {
    condition     = var.SUP_SnowflakeUserWeekStart == null || can(var.SUP_SnowflakeUserWeekStart >= 0 && var.SUP_SnowflakeUserWeekStart <= 7)
    error_message = "var.SUP_SnowflakeUserWeekStart must be Greater than or Equal to 0 AND Less Than or Equal to 7"
  }
  default = null
}

#---
