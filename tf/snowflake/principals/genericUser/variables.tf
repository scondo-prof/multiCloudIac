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

variable "resourceName" {
  type = string
}

#---

#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/user#schema

variable "userAbortDetachedQuery" {
  type    = bool
  default = null
}

variable "userAutocommit" {
  type    = bool
  default = null
}

variable "userBinaryInputFormat" {
  type    = string
  default = null
}

variable "userBinaryOutputFormat" {
  type    = string
  default = null
}

variable "userClientMemoryLimit" {
  type    = number
  default = null
}

variable "userClientMetadataRequestUseConnectionCtx" {
  type    = bool
  default = null
}

variable "userClientPrefetchThreads" {
  type    = number
  default = null
}

variable "userClientResultChunkSize" {
  type    = number
  default = null
}

variable "userClientResultColumnCaseInsensitive" {
  type    = bool
  default = null
}

variable "userClientSessionKeepAlive" {
  type    = bool
  default = null
}

variable "userClientSessionKeepAliveHeartbeatFrequency" {
  type    = number
  default = null
}

variable "userClientTimestampTypeMapping" {
  type    = string
  default = null
}

variable "userComment" {
  type    = string
  default = null
}

variable "userDateInputFormat" {
  type    = string
  default = null
}

variable "userDateOutputFormat" {
  type    = string
  default = null
}

variable "userDaysToExpiry" {
  type    = number
  default = null
}

variable "userDefaultNamespace" {
  type    = string
  default = null
}

variable "userDefaultRole" {
  type    = string
  default = null
}

variable "userDefaultSecondaryRolesOption" {
  type    = string
  default = null
}

variable "userDefaultWarehouse" {
  type    = string
  default = null
}

variable "userDisableMfa" {
  type = string
  validation {
    condition = var.userDisableMfa == null || can(contains([
      "true",
      "false"
    ], var.userDisableMfa))
    error_message = "Valid inputs for | variable: var.userDisableMfa | are: true , false"
  }
  default = null
}

variable "userDisabled" {
  type = string
  validation {
    condition = var.userDisabled == null || can(contains([
      "true",
      "false"
    ], var.userDisabled))
    error_message = "Valid inputs for | variable: var.userDisabled | are: true , false"
  }
  default = null
}

variable "userDisplayName" {
  type    = string
  default = null
}

variable "userEmail" {
  type      = string
  default   = null
  sensitive = true
}

variable "userEnableUnloadPhysicalTypeOptimization" {
  type    = bool
  default = null
}

variable "userEnableUnredactedQuerySyntaxError" {
  type    = bool
  default = null
}

variable "userErrorOnNondeterministicMerge" {
  type    = bool
  default = null
}

variable "userErrorOnNondeterministicUpdate" {
  type    = bool
  default = null
}

variable "userFirstName" {
  type    = string
  default = null
}

variable "userGeographyOutputFormat" {
  type    = string
  default = null
}

variable "userGeometryOutputFormat" {
  type    = string
  default = null
}

variable "userJdbcTreatDecimalAsInt" {
  type    = bool
  default = null
}

variable "userJdbcTreatTimestampNtzAsUtc" {
  type    = bool
  default = null
}

variable "userJdbcUseSessionTimezone" {
  type    = bool
  default = null
}

variable "userJsonIndent" {
  type    = number
  default = null
}

variable "userLastName" {
  type    = string
  default = null
}

variable "userLockTimeout" {
  type    = number
  default = null
}

variable "userLogLevel" {
  type    = string
  default = null
}

variable "userLoginName" {
  type      = string
  default   = null
  sensitive = true
}

variable "userMiddleName" {
  type    = string
  default = null
}

variable "userMinsToBypassMfa" {
  type    = number
  default = null
}

variable "userMinsToUnlock" {
  type    = number
  default = null
}

variable "userMultiStatementCount" {
  type    = number
  default = null
}

variable "userMustChangePassword" {
  type = string
  validation {
    condition = var.userMustChangePassword == null || can(contains([
      "true",
      "false"
    ], var.userMustChangePassword))
    error_message = "Valid inputs for | variable: var.userMustChangePassword | are: true , false"
  }
  default = null
}

variable "userNetworkPolicy" {
  type    = string
  default = null
}

variable "userNoorderSequenceAsDefault" {
  type    = bool
  default = null
}

variable "userOdbcTreatDecimalAsInt" {
  type    = bool
  default = null
}

variable "userPassword" {
  type      = string
  default   = null
  sensitive = true
}

variable "userPreventUnloadToInternalStages" {
  type    = bool
  default = null
}

variable "userQueryTag" {
  type    = string
  default = null
}

variable "userQuotedIdentifiersIgnoreCase" {
  type    = bool
  default = null
}

variable "userRowsPerRuleset" {
  type    = number
  default = null
}

variable "userRsaPublicKey" {
  type    = string
  default = null
}

variable "userRsaPublicKey2" {
  type    = string
  default = null
}

variable "userS3StageVpceDnsName" {
  type    = string
  default = null
}

variable "userSearchPath" {
  type    = string
  default = null
}

variable "userSimulatedDataSharingConsumer" {
  type    = string
  default = null
}

variable "userStatementQueuedTimeoutInSeconds" {
  type    = number
  default = null
}

variable "userStatementTimeoutInSeconds" {
  type    = number
  default = null
}

variable "userStrictJsonOutput" {
  type    = bool
  default = null
}

variable "userTimeInputFormat" {
  type    = string
  default = null
}

variable "userTimeOutputFormat" {
  type    = string
  default = null
}

variable "userTimestampDayIsAlways24h" {
  type    = bool
  default = null
}

variable "userTimestampInputFormat" {
  type    = string
  default = null
}

variable "userTimestampLtzOutputFormat" {
  type    = string
  default = null
}

variable "userTimestampNtzOutputFormat" {
  type    = string
  default = null
}

variable "userTimestampOutputFormat" {
  type    = string
  default = null
}

variable "userTimestampTypeMapping" {
  type    = string
  default = null
}

variable "userTimestampTzOutputFormat" {
  type    = string
  default = null
}

variable "userTimezone" {
  type    = string
  default = null
}

variable "userTraceLevel" {
  type    = string
  default = null
}

variable "userTransactionAbortOnError" {
  type    = bool
  default = null
}

variable "userTransactionDefaultIsolationLevel" {
  type    = string
  default = null
}

variable "userTwoDigitCenturyStart" {
  type    = number
  default = null
}

variable "userUnsupportedDdlAction" {
  type    = string
  default = null
}

variable "userUsedCachedResult" {
  type    = bool
  default = null
}

variable "userWeekOfYearPolicy" {
  type    = number
  default = null
}

variable "userWeekStart" {
  type = number
  validation {
    condition     = var.userWeekStart == null || can(var.userWeekStart >= 0 && var.userWeekStart <= 7)
    error_message = "var.userWeekStart must be Greater than or Equal to 0 AND Less Than or Equal to 7"
  }
  default = null
}