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
      "TOKENACCESS_SSOR",
      "USERNAMEPASS_SSWORDMFA"
    ], var.snowflakeAuthenticator))
    error_message = "Valid inputs for | variable: var.snowflakeAuthenticator | are: SNOWFLAKE , OAUTH , EXTERNALBROWSER , OKTA , SNOWFLAKE_JWT , TOKENACCESS_SSOR , USERNAMEPASS_SSWORDMFA"
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

variable "resourceName" {
  type = string
}

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

variable "projectName" {
  type = string
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

variable "gcpProjectId" {
  type    = string
  default = "p3-prod-aa94d"
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}



#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/account_role#schema

variable "SS_SS_SARARG_AccountRoleComment" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/grant_privileges_to_account_role#schema

variable "SS_SS_SARARG_GrantPrivilegesAllPrivileges" {
  type    = bool
  default = null
}

variable "SS_SS_SARARG_GrantPrivilegesAlwaysApply" {
  type    = bool
  default = null
}

variable "SS_SS_SARARG_GrantPrivilegesAlwaysApplyTrigger" {
  type    = string
  default = null
}

variable "SS_SS_SARARG_GrantPrivilegesOnAccount" {
  type    = bool
  default = null
}

variable "SS_SS_SARARG_GrantPrivilegesObjects" {
  type = list(object({
    on_account_object = optional(object({ ##https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/grant_privileges_to_account_role#nestedblock--on_account_object
      object_name = string
      object_type = string
    }), null)

    on_schema = optional(object({ ##https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/grant_privileges_to_account_role#nestedblock--on_schema
      all_schemas_in_database    = optional(string, null)
      future_schemas_in_database = optional(string, null)
      schema_name                = optional(string, null)
    }))

    on_schema_object = optional(object({
      all = optional(object({ #https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/grant_privileges_to_account_role#nestedblock--on_schema_object--all
        object_type_plural = string
        in_database        = optional(string, null)
        in_schema          = optional(string, null)
      }), null)

      future = optional(object({ #https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/grant_privileges_to_account_role#nestedblock--on_schema_object--future
        object_type_plural = string
        in_database        = optional(string, null)
        in_schema          = optional(string, null)
      }), null)

      object_name = optional(string, null)
      object_type = optional(string, null)
    }), null)

    privileges        = optional(list(string), null)
    with_grant_option = optional(bool, null)
  }))
}







#https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password#schema

variable "SS_SS_SUP_PKS_PasswordLength" {
  type = number
  validation {
    condition     = var.SS_SS_SUP_PKS_PasswordLength >= 1 && var.SS_SS_SUP_PKS_PasswordLength <= 1024
    error_message = "var.SS_SS_SUP_PKS_PasswordLength must be Greater than or Equal to 1 AND Less Than or Equal to 1024"
  }
}

variable "SS_SS_SUP_PKS_PasswordKeepers" {
  type    = map(string)
  default = null
}

variable "SS_SS_SUP_PKS_PasswordLower" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_PKS_PasswordMinLower" {
  type = number
  validation {
    condition     = var.SS_SS_SUP_PKS_PasswordMinLower == null || can(var.SS_SS_SUP_PKS_PasswordMinLower >= 0 && var.SS_SS_SUP_PKS_PasswordMinLower <= 1024)
    error_message = "var.SS_SS_SUP_PKS_PasswordMinLower must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "SS_SS_SUP_PKS_PasswordMinNumeric" {
  type = number
  validation {
    condition     = var.SS_SS_SUP_PKS_PasswordMinNumeric == null || can(var.SS_SS_SUP_PKS_PasswordMinNumeric >= 0 && var.SS_SS_SUP_PKS_PasswordMinNumeric <= 1024)
    error_message = "var.SS_SS_SUP_PKS_PasswordMinNumeric must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "SS_SS_SUP_PKS_PasswordMinSpecial" {
  type = number
  validation {
    condition     = var.SS_SS_SUP_PKS_PasswordMinSpecial == null || can(var.SS_SS_SUP_PKS_PasswordMinSpecial >= 0 && var.SS_SS_SUP_PKS_PasswordMinSpecial <= 1024)
    error_message = "var.SS_SS_SUP_PKS_PasswordMinSpecial must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "SS_SS_SUP_PKS_PasswordMinUpper" {
  type = number
  validation {
    condition     = var.SS_SS_SUP_PKS_PasswordMinUpper == null || can(var.SS_SS_SUP_PKS_PasswordMinUpper >= 0 && var.SS_SS_SUP_PKS_PasswordMinUpper <= 1024)
    error_message = "var.SS_SS_SUP_PKS_PasswordMinUpper must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "SS_SS_SUP_PKS_PasswordNumeric" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_PKS_PasswordOverrideSpecial" {
  type    = string
  default = null
}

variable "SS_SS_SUP_PKS_PasswordSpecial" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_PKS_PasswordUpper" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#schema

variable "SS_SS_SUP_PKS_PrivateKeyAlgorithm" {
  type = string
  validation {
    condition = contains([
      "RSA",
      "ECDSA",
      "ED25519"
    ], var.SS_SS_SUP_PKS_PrivateKeyAlgorithm)
    error_message = "Valid inputs for | variable: var.SS_SS_SUP_PKS_PrivateKeyAlgorithm | are: RSA, ECDSA, ED25519"
  }
}

variable "SS_SS_SUP_PKS_PrivateKeyEcdsaCurve" {
  type = string
  validation {
    condition = var.SS_SS_SUP_PKS_PrivateKeyEcdsaCurve == null || can(contains([
      "P224",
      "P256",
      "P384",
      "P521"
    ], var.SS_SS_SUP_PKS_PrivateKeyEcdsaCurve))
    error_message = "Valid inputs for | variable: var.SS_SS_SUP_PKS_PrivateKeyEcdsaCurve | are: P224, P256, P384, P521"
  }
  default = null
}

variable "SS_SS_SUP_PKS_PrivateKeyRsaBits" {
  type    = number
  default = null
}




variable "SS_SS_SUP_PKS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = 7
}

variable "SS_SS_SUP_PKS_SWV_SecretReplica" {
  type = object({
    kms_key_id = string
    region     = string
  })
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = true
}

variable "SS_SS_SUP_PKS_privateKeyP8FilePath" {
  type    = string
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SS_SS_SUP_PKS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}







#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/user#schema

variable "SS_SS_SUP_SnowflakeUserAbortDetachedQuery" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserAutocommit" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserBinaryInputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserBinaryOutputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserClientMemoryLimit" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserClientMetadataRequestUseConnectionCtx" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserClientPrefetchThreads" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserClientResultChunkSize" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserClientResultColumnCaseInsensitive" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserClientSessionKeepAlive" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserClientSessionKeepAliveHeartbeatFrequency" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserClientTimestampTypeMapping" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserComment" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserDateInputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserDateOutputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserDaysToExpiry" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserDefaultNamespace" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserDefaultSecondaryRolesOption" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserDefaultWarehouse" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserDisableMfa" {
  type = string
  validation {
    condition = var.SS_SS_SUP_SnowflakeUserDisableMfa == null || can(contains([
      "true",
      "false"
    ], var.SS_SS_SUP_SnowflakeUserDisableMfa))
    error_message = "Valid inputs for | variable: var.SS_SS_SUP_SnowflakeUserDisableMfa | are: true , false"
  }
  default = null
}

variable "SS_SS_SUP_SnowflakeUserDisabled" {
  type = string
  validation {
    condition = var.SS_SS_SUP_SnowflakeUserDisabled == null || can(contains([
      "true",
      "false"
    ], var.SS_SS_SUP_SnowflakeUserDisabled))
    error_message = "Valid inputs for | variable: var.SS_SS_SUP_SnowflakeUserDisabled | are: true , false"
  }
  default = null
}

variable "SS_SS_SUP_SnowflakeUserDisplayName" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserEmail" {
  type      = string
  default   = null
  sensitive = true
}

variable "SS_SS_SUP_SnowflakeUserEnableUnloadPhysicalTypeOptimization" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserEnableUnredactedQuerySyntaxError" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserErrorOnNondeterministicMerge" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserErrorOnNondeterministicUpdate" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserFirstName" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserGeographyOutputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserGeometryOutputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserJdbcTreatDecimalAsInt" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserJdbcTreatTimestampNtzAsUtc" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserJdbcUseSessionTimezone" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserJsonIndent" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserLastName" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserLockTimeout" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserLogLevel" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserLoginName" {
  type      = string
  default   = null
  sensitive = true
}

variable "SS_SS_SUP_SnowflakeUserMiddleName" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserMinsToBypassMfa" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserMinsToUnlock" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserMultiStatementCount" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserMustChangePassword" {
  type = string
  validation {
    condition = var.SS_SS_SUP_SnowflakeUserMustChangePassword == null || can(contains([
      "true",
      "false"
    ], var.SS_SS_SUP_SnowflakeUserMustChangePassword))
    error_message = "Valid inputs for | variable: var.SS_SS_SUP_SnowflakeUserMustChangePassword | are: true , false"
  }
  default = null
}

variable "SS_SS_SUP_SnowflakeUserNetworkPolicy" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserNoorderSequenceAsDefault" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserOdbcTreatDecimalAsInt" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserPassword" {
  type      = string
  default   = null
  sensitive = true
}

variable "SS_SS_SUP_SnowflakeUserPreventUnloadToInternalStages" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserQueryTag" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserQuotedIdentifiersIgnoreCase" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserRowsPerRuleset" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserRsaPublicKey2" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserS3StageVpceDnsName" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserSearchPath" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserSimulatedDataSharingConsumer" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserStatementQueuedTimeoutInSeconds" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserStatementTimeoutInSeconds" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserStrictJsonOutput" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimeInputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimeOutputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimestampDayIsAlways24h" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimestampInputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimestampLtzOutputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimestampNtzOutputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimestampOutputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimestampTypeMapping" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimestampTzOutputFormat" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTimezone" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTraceLevel" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTransactionAbortOnError" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTransactionDefaultIsolationLevel" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserTwoDigitCenturyStart" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserUnsupportedDdlAction" {
  type    = string
  default = null
}

variable "SS_SS_SUP_SnowflakeUserUsedCachedResult" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_SnowflakeUserWeekOfYearPolicy" {
  type    = number
  default = null
}

variable "SS_SS_SUP_SnowflakeUserWeekStart" {
  type = number
  validation {
    condition     = var.SS_SS_SUP_SnowflakeUserWeekStart == null || can(var.SS_SS_SUP_SnowflakeUserWeekStart >= 0 && var.SS_SS_SUP_SnowflakeUserWeekStart <= 7)
    error_message = "var.SS_SS_SUP_SnowflakeUserWeekStart must be Greater than or Equal to 0 AND Less Than or Equal to 7"
  }
  default = null
}






#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/grant_account_role#schema

variable "SS_SS_GrantAccountRoleParentRoleName" {
  type    = string
  default = null
}




#---

variable "SS_SIBS_SPCRDFG_CRDPRFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.SS_SIBS_SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for SS_SIBS_SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CloudBuildTriggerRoleId" {
  type = string
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage)
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "SS_SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "SS_SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName" {
  type    = string
  default = "dash-apps"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests >= 1 && var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout >= 1 && var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber >= 1 && var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber <= 65535
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances >= 0
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances >= 1 && var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances <= 10
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory >= 1 && var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus)
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "10899791015822106623"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type    = list(string)
  default = ["projects/p3-prod-aa94d/notificationChannels/16159316952891778334"]
}

variable "additionalLabels" {
  type    = map(string)
  default = {}
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

#--

variable "SS_SIBS_SPCRDFG_CRDPFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.SS_SIBS_SPCRDFG_CRDPFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for SS_SIBS_SPCRDFG_CRDPFG_SecretDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerRoleStage)
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_RoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_ConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_RequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber <= 65535
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_PortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances >= 0
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_MinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances <= 10
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_MaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus)
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_NumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_AmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}



variable "SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "11762886701350469070"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type    = list(string)
  default = ["projects/p3-prod-aa94d/notificationChannels/7275734209150042716"]
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user#argument-reference
variable "SS_SIBS_IUWPAKSMS_UWP_IamUserPath" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_UWP_IamUserPermissionBoundary" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_UWP_IamUserForceDestroy" {
  type    = bool
  default = null
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "SS_SIBS_IUWPAKSMS_UWP_IamPolicyDescription" {
  type    = string
  default = null
}
variable "SS_SIBS_IUWPAKSMS_UWP_IamPolicyNamePrefix" {
  type    = string
  default = null
}
variable "SS_SIBS_IUWPAKSMS_UWP_IamPolicyPath" {
  type    = string
  default = "/"
}
variable "SS_SIBS_IUWPAKSMS_UWP_IamPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "SS_SIBS_IUWPAKSMS_UWP_IamPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key#argument-reference
variable "SS_SIBS_IUWPAKSMS_IamAccessKeyPgpKey" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_IamAccessKeyStatus" {
  type = string
  validation {
    condition = var.SS_SIBS_IUWPAKSMS_IamAccessKeyStatus == null || can(contains([
      "Active",
      "Inactive"
    ], var.SS_SIBS_IUWPAKSMS_IamAccessKeyStatus))
    error_message = "Valid inputs for | variable: var.SS_SIBS_IUWPAKSMS_IamAccessKeyStatus | are: Active, and Inactive"
  }
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "SS_SIBS_IUWPAKSMS_SecretDescription" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SecretPolicy" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "SS_SIBS_IUWPAKSMS_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SS_SIBS_IUWPAKSMS_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SecretVersionStages" {
  type    = list(string)
  default = null
}





#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference
variable "SS_SIBS_BWV_S3BucketPrefix" {
  type    = string
  default = null
}

variable "SS_SIBS_BWV_S3BucketForceDestroy" {
  type    = bool
  default = null
}

variable "SS_SIBS_BWV_S3BucketObjectLockEnabled" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#argument-reference
variable "SS_SIBS_BWV_S3BucketVersioningConfigurationStatus" {
  type = string
  validation {
    condition = contains([
      "Enabled",
      "Suspended",
      "Disabled"
    ], var.SS_SIBS_BWV_S3BucketVersioningConfigurationStatus)
    error_message = "Valid inputs for | variable: var.SS_SIBS_BWV_S3BucketVersioningConfigurationStatus | are: Enabled, Suspended, or Disabled"
  }
}

variable "SS_SIBS_BWV_S3BucketVersioningConfigurationMfaDelete" {
  type = string
  validation {
    condition = var.SS_SIBS_BWV_S3BucketVersioningConfigurationMfaDelete == null || can(contains([
      "Enabled",
      "Disabled"
    ], var.SS_SIBS_BWV_S3BucketVersioningConfigurationMfaDelete))
    error_message = "Valid inputs for | variable: var.SS_SIBS_BWV_S3BucketVersioningConfigurationMfaDelete | are: Enabled, or Disabled"
  }
  default = null
}

variable "SS_SIBS_BWV_S3BucketVersioningExpectedBucketOwner" {
  type    = string
  default = null
}

variable "SS_SIBS_BWV_S3BucketVersioningMfa" {
  type    = string
  default = null
}



variable "SS_SIBS_SWV_Staging_SecretKmsKeyId" {
  type    = string
  default = null
}


variable "SS_SIBS_SWV_Staging_SecretPolicy" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Staging_SecretRecoveryWindowInDays" {
  type    = number
  default = 7
}

variable "SS_SIBS_SWV_Staging_SecretReplica" {
  type = object({
    kms_key_id = string
    region     = string
  })
  default = null
}

variable "SS_SIBS_SWV_Staging_SecretForceSecretOverwrite" {
  type    = bool
  default = true
}

variable "SS_SIBS_SWV_Staging_SnowflakeWarehouse" {
  type    = string
}

variable "SS_SIBS_SWV_Staging_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SS_SIBS_SWV_Staging_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Staging_SecretVersionStages" {
  type    = list(string)
  default = null
}



variable "SS_SIBS_SWV_Prod_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretPolicy" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretRecoveryWindowInDays" {
  type    = number
  default = 7
}

variable "SS_SIBS_SWV_Prod_SecretReplica" {
  type = object({
    kms_key_id = string
    region     = string
  })
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretForceSecretOverwrite" {
  type    = bool
  default = true
}

variable "SS_SIBS_SWV_Prod_SnowflakeWarehouse" {
  type    = string
}

variable "SS_SIBS_SWV_Prod_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SS_SIBS_SWV_Prod_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretVersionStages" {
  type    = list(string)
  default = null
}




#---
