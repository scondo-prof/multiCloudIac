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
  type    = bool
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
    error_message = "Valid inputs for | variable: var.snowflakeDriverTracing | are: trace | debug | info | print | warning | error | fatal | panic"
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
  type    = bool
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

variable "snowflakePreviewFeaturesEnabled" {
  type = list(string)
  validation {
    condition = var.snowflakePreviewFeaturesEnabled == null || can(contains([
      "snowflake_current_account_datasource",
      "snowflake_account_authentication_policy_attachment_resource",
      "snowflake_account_passwd_policy_attachment_resource",
      "snowflake_alert_resource",
      "snowflake_alerts_datasource",
      "snowflake_api_integration_resource",
      "snowflake_authentication_policy_resource",
      "snowflake_ctex_search_service_resource",
      "snowflake_ctex_search_services_datasource",
      "snowflake_database_datasource",
      "snowflake_database_role_datasource",
      "snowflake_dynamic_table_resource",
      "snowflake_dynamic_tables_datasource",
      "snowflake_external_function_resource",
      "snowflake_external_functions_datasource",
      "snowflake_external_table_resource",
      "snowflake_external_tables_datasource",
      "snowflake_external_volume_resource",
      "snowflake_failover_group_resource",
      "snowflake_failover_groups_datasource",
      "snowflake_file_fmat_resource",
      "snowflake_file_fmats_datasource",
      "snowflake_function_java_resource",
      "snowflake_function_javascript_resource",
      "snowflake_function_python_resource",
      "snowflake_function_scala_resource",
      "snowflake_function_sql_resource",
      "snowflake_functions_datasource",
      "snowflake_managed_account_resource",
      "snowflake_materialized_view_resource",
      "snowflake_materialized_views_datasource",
      "snowflake_netwk_policy_attachment_resource",
      "snowflake_netwk_rule_resource",
      "snowflake_email_notification_integration_resource",
      "snowflake_notification_integration_resource",
      "snowflake_object_parameter_resource",
      "snowflake_passwd_policy_resource",
      "snowflake_pipe_resource",
      "snowflake_pipes_datasource",
      "snowflake_current_role_datasource",
      "snowflake_sequence_resource",
      "snowflake_sequences_datasource",
      "snowflake_share_resource",
      "snowflake_shares_datasource",
      "snowflake_parameters_datasource",
      "snowflake_procedure_java_resource",
      "snowflake_procedure_javascript_resource",
      "snowflake_procedure_python_resource",
      "snowflake_procedure_scala_resource",
      "snowflake_procedure_sql_resource",
      "snowflake_procedures_datasource",
      "snowflake_stage_resource",
      "snowflake_stages_datasource",
      "snowflake_stage_integration_resource",
      "snowflake_stage_integrations_datasource",
      "snowflake_system_generate_scim_access_token_datasource",
      "snowflake_system_get_aws_sns_iam_policy_datasource",
      "snowflake_system_get_privatelink_config_datasource",
      "snowflake_system_get_snowflake_platfm_info_datasource",
      "snowflake_table_column_masking_policy_application_resource",
      "snowflake_table_constraint_resource",
      "snowflake_table_resource",
      "snowflake_tables_datasource",
      "snowflake_user_authentication_policy_attachment_resource",
      "snowflake_user_public_keys_resource",
      "snowflake_user_passwd_policy_attachment_resource"
    ], var.snowflakePreviewFeaturesEnabled))
    error_message = "Valid inputs for | variable: var.snowflakePreviewFeaturesEnabled | are: snowflake_current_account_datasource | snowflake_account_authentication_policy_attachment_resource | snowflake_account_password_policy_attachment_resource | snowflake_alert_resource | snowflake_alerts_datasource | snowflake_api_integration_resource | snowflake_authentication_policy_resource | snowflake_cortex_search_service_resource | snowflake_cortex_search_services_datasource | snowflake_database_datasource | snowflake_database_role_datasource | snowflake_dynamic_table_resource | snowflake_dynamic_tables_datasource | snowflake_external_function_resource | snowflake_external_functions_datasource | snowflake_external_table_resource | snowflake_external_tables_datasource | snowflake_external_volume_resource | snowflake_failover_group_resource | snowflake_failover_groups_datasource | snowflake_file_format_resource | snowflake_file_formats_datasource | snowflake_function_java_resource | snowflake_function_javascript_resource | snowflake_function_python_resource | snowflake_function_scala_resource | snowflake_function_sql_resource | snowflake_functions_datasource | snowflake_managed_account_resource | snowflake_materialized_view_resource | snowflake_materialized_views_datasource | snowflake_network_policy_attachment_resource | snowflake_network_rule_resource | snowflake_email_notification_integration_resource | snowflake_notification_integration_resource | snowflake_object_parameter_resource | snowflake_password_policy_resource | snowflake_pipe_resource | snowflake_pipes_datasource | snowflake_current_role_datasource | snowflake_sequence_resource | snowflake_sequences_datasource | snowflake_share_resource | snowflake_shares_datasource | snowflake_parameters_datasource | snowflake_procedure_java_resource | snowflake_procedure_javascript_resource | snowflake_procedure_python_resource | snowflake_procedure_scala_resource | snowflake_procedure_sql_resource | snowflake_procedures_datasource | snowflake_stage_resource | snowflake_stages_datasource | snowflake_storage_integration_resource | snowflake_storage_integrations_datasource | snowflake_system_generate_scim_access_token_datasource | snowflake_system_get_aws_sns_iam_policy_datasource | snowflake_system_get_privatelink_config_datasource | snowflake_system_get_snowflake_platform_info_datasource | snowflake_table_column_masking_policy_application_resource | snowflake_table_constraint_resource | snowflake_table_resource | snowflake_tables_datasource | snowflake_user_authentication_policy_attachment_resource | snowflake_user_public_keys_resource | snowflake_user_password_policy_attachment_resource"
  }
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

variable "createdBy" {
  type    = string
  default = "scott-condo"
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
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
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



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "SS_SS_SUP_PKS_SWV_SecretDescription" {
  type    = string
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SS_SS_SUP_PKS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "SS_SS_SUP_PKS_SWV_PrivateKeyP8FilePath" {
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


#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs#schema



#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/SS_SS_SUP_SnowflakeUser#schema

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




#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs#schema

#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/grant_account_role#schema

variable "SS_SS_GrantAccountRoleParentRoleName" {
  type    = string
  default = null
}



#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#argument-reference

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_topics
    name = string
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretExpireTime" {
  type    = string
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTtl" {
  type    = string
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SS_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "SS_SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
  default   = []
}






variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CloudBuildTriggerServiceAccountsRoleId" {
  type = string
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage)
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SS_SIBS_SPCRDFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "SS_SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "SS_SIBS_SPCRDFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "SS_SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "SS_SIBS_SPCRDFG_CloudBuildTriggerBucketName" {
  type = string
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



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsEnabled" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels" {
  type = list(string)
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity" {
  type = string
  validation {
    condition = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity))
    error_message = "Valid inputs for | variable: SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference

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

  default = 50
}


variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity" {
  type = string
  validation {
    condition = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity))
    error_message = "Valid inputs for | variable: SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


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


variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity" {
  type = string
  validation {
    condition = var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity))
    error_message = "Valid inputs for | variable: SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SS_SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}





#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#argument-reference

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_topics
    name = string
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretExpireTime" {
  type    = string
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTtl" {
  type    = string
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "SS_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
  default   = []
}






variable "SS_SIBS_SPCRDFG_CRDPFG_ServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SS_SIBS_SPCRDFG_CRDPFG_ServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPFG_ServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SS_SIBS_SPCRDFG_CRDPFG_ServiceAccountRoleStage)
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_ServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber <= 65535
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances >= 0
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances <= 10
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory >= 1 && var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus)
    error_message = "Variable SS_SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity" {
  type = string
  validation {
    condition = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity))
    error_message = "Valid inputs for | variable: SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference

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


variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type = list(string)
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity" {
  type = string
  validation {
    condition = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity))
    error_message = "Valid inputs for | variable: SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


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

  default = 50
}


variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity" {
  type = string
  validation {
    condition = var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity))
    error_message = "Valid inputs for | variable: SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SS_SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
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

variable "SS_SIBS_IUWPAKSMS_SWV_SecretDescription" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "SS_SIBS_IUWPAKSMS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SS_SIBS_IUWPAKSMS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SS_SIBS_IUWPAKSMS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/SS_SIBS_SWV_Staging_Secretsmanager_SS_SIBS_SWV_Staging_Secret#argument-reference

variable "SS_SIBS_SWV_Staging_SecretDescription" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Staging_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Staging_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Staging_SecretPolicy" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Staging_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SS_SIBS_SWV_Staging_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SS_SIBS_SWV_Staging_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}

variable "SS_SS_SUP_PKS_privateKeyP8FilePath" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Staging_SnowflakeWarehouse" {
  type = string
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


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





#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/SS_SIBS_SWV_Prod_Secretsmanager_SS_SIBS_SWV_Prod_Secret#argument-reference

variable "SS_SIBS_SWV_Prod_SecretDescription" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretPolicy" {
  type    = string
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SS_SIBS_SWV_Prod_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}

variable "SS_SIBS_SWV_Prod_SnowflakeWarehouse" {
  type = string
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


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