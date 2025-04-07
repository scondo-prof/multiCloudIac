terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 1.0"
    }
  }
}

provider "snowflake" {
  account_name                      = var.snowflakeAccountName
  authenticator                     = var.snowflakeAuthenticator
  client_ip                         = var.snowflakeClientIp
  client_request_mfa_token          = var.snowflakeClientRequestMfaToken
  client_store_temporary_credential = var.snowflakeClientStoreTemporaryCredential
  client_timeout                    = var.snowflakeClientTimeout
  disable_console_login             = var.snowflakeDisableConsoleLogin
  disable_query_context_cache       = var.snowflakeDisableQueryContextCache
  disable_telemetry                 = var.snowflakeDisableTelemetry
  driver_tracing                    = var.snowflakeDriverTracing
  external_browser_timeout          = var.snowflakeExternalBrowserTimeout
  host                              = var.snowflakeHost
  include_retry_reason              = var.snowflakeIncludeRetryReason
  insecure_mode                     = var.snowflakeInsecureMode
  jwt_client_timeout                = var.snowflakeJwtClientTimeout
  jwt_expire_timeout                = var.snowflakeJwtExpireTimeout
  keep_session_alive                = var.snowflakeKeepSessionAlive
  login_timeout                     = var.snowflakeLoginTimeout
  max_retry_count                   = var.snowflakeMaxRetryCount
  ocsp_fail_open                    = var.snowflakeOcspFailOpen
  okta_url                          = var.snowflakeOktaUrl
  organization_name                 = var.snowflakeOrganizationName
  params                            = var.snowflakeParams
  passcode                          = var.snowflakePasscode
  passcode_in_password              = var.snowflakePasscodeInPassword
  password                          = var.snowflakePassword
  port                              = var.snowflakePort
  preview_features_enabled          = var.snowflakePreviewFeaturesEnabled
  private_key                       = can(file(var.snowflakePrivateKey)) ? file(var.snowflakePrivateKey) : null
  private_key_passphrase            = var.snowflakePrivateKeyPassphrase
  profile                           = var.snowflakeProfile
  protocol                          = var.snowflakeProtocol
  request_timeout                   = var.snowflakeRequestTimeout
  role                              = var.snowflakeRole
  tmp_directory_path                = var.snowflakeTmpDirectoryPath
  token                             = var.snowflakeToken

  dynamic "token_accessor" {
    for_each = var.snowflakeTokenAccessor != null ? [var.snowflakeTokenAccessor] : []
    content {
      client_id      = token_accessor.value["client_id"]
      client_secret  = token_accessor.value["client_secret"]
      redirect_uri   = token_accessor.value["redirect_uri"]
      refresh_token  = token_accessor.value["refresh_token"]
      token_endpoint = token_accessor.value["token_endpoint"]
    }
  }
  user                        = var.snowflakeUser
  validate_default_parameters = var.snowflakeValidateDefaultParameters
  warehouse                   = var.snowflakeWarehouse
}

resource "snowflake_user" "user" {
  name                                          = upper(replace("${var.resourceName}-user", "-", "_"))
  abort_detached_query                          = var.userAbortDetachedQuery
  autocommit                                    = var.userAutocommit
  binary_input_format                           = var.userBinaryInputFormat
  binary_output_format                          = var.userBinaryOutputFormat
  client_memory_limit                           = var.userClientMemoryLimit
  client_metadata_request_use_connection_ctx    = var.userClientMetadataRequestUseConnectionCtx
  client_prefetch_threads                       = var.userClientPrefetchThreads
  client_result_chunk_size                      = var.userClientResultChunkSize
  client_result_column_case_insensitive         = var.userClientResultColumnCaseInsensitive
  client_session_keep_alive                     = var.userClientSessionKeepAlive
  client_session_keep_alive_heartbeat_frequency = var.userClientSessionKeepAliveHeartbeatFrequency
  client_timestamp_type_mapping                 = var.userClientTimestampTypeMapping
  comment                                       = var.userComment
  date_input_format                             = var.userDateInputFormat
  date_output_format                            = var.userDateOutputFormat
  days_to_expiry                                = var.userDaysToExpiry
  default_namespace                             = var.userDefaultNamespace
  default_role                                  = var.userDefaultRole
  default_secondary_roles_option                = var.userDefaultSecondaryRolesOption
  default_warehouse                             = var.userDefaultWarehouse
  disable_mfa                                   = var.userDisableMfa
  disabled                                      = var.userDisabled
  display_name                                  = var.userDisplayName
  email                                         = var.userEmail
  enable_unload_physical_type_optimization      = var.userEnableUnloadPhysicalTypeOptimization
  enable_unredacted_query_syntax_error          = var.userEnableUnredactedQuerySyntaxError
  error_on_nondeterministic_merge               = var.userErrorOnNondeterministicMerge
  error_on_nondeterministic_update              = var.userErrorOnNondeterministicUpdate
  first_name                                    = var.userFirstName
  geography_output_format                       = var.userGeographyOutputFormat
  geometry_output_format                        = var.userGeometryOutputFormat
  jdbc_treat_decimal_as_int                     = var.userJdbcTreatDecimalAsInt
  jdbc_treat_timestamp_ntz_as_utc               = var.userJdbcTreatTimestampNtzAsUtc
  jdbc_use_session_timezone                     = var.userJdbcUseSessionTimezone
  json_indent                                   = var.userJsonIndent
  last_name                                     = var.userLastName
  lock_timeout                                  = var.userLockTimeout
  log_level                                     = var.userLogLevel
  login_name                                    = var.userLoginName
  middle_name                                   = var.userMiddleName
  mins_to_bypass_mfa                            = var.userMinsToBypassMfa
  mins_to_unlock                                = var.userMinsToUnlock
  multi_statement_count                         = var.userMultiStatementCount
  must_change_password                          = var.userMustChangePassword
  network_policy                                = var.userNetworkPolicy
  noorder_sequence_as_default                   = var.userNoorderSequenceAsDefault
  odbc_treat_decimal_as_int                     = var.userOdbcTreatDecimalAsInt
  password                                      = var.userPassword
  prevent_unload_to_internal_stages             = var.userPreventUnloadToInternalStages
  query_tag                                     = var.userQueryTag
  quoted_identifiers_ignore_case                = var.userQuotedIdentifiersIgnoreCase
  rows_per_resultset                            = var.userRowsPerRuleset
  rsa_public_key                                = var.userRsaPublicKey
  rsa_public_key_2                              = var.userRsaPublicKey2
  s3_stage_vpce_dns_name                        = var.userS3StageVpceDnsName
  search_path                                   = var.userSearchPath
  simulated_data_sharing_consumer               = var.userSimulatedDataSharingConsumer
  statement_queued_timeout_in_seconds           = var.userStatementQueuedTimeoutInSeconds
  statement_timeout_in_seconds                  = var.userStatementTimeoutInSeconds
  strict_json_output                            = var.userStrictJsonOutput
  time_input_format                             = var.userTimeInputFormat
  time_output_format                            = var.userTimeOutputFormat
  timestamp_day_is_always_24h                   = var.userTimestampDayIsAlways24h
  timestamp_input_format                        = var.userTimestampInputFormat
  timestamp_ltz_output_format                   = var.userTimestampLtzOutputFormat
  timestamp_ntz_output_format                   = var.userTimestampNtzOutputFormat
  timestamp_output_format                       = var.userTimestampOutputFormat
  timestamp_type_mapping                        = var.userTimestampTypeMapping
  timestamp_tz_output_format                    = var.userTimestampTzOutputFormat
  timezone                                      = var.userTimezone
  trace_level                                   = var.userTraceLevel
  transaction_abort_on_error                    = var.userTransactionAbortOnError
  transaction_default_isolation_level           = var.userTransactionDefaultIsolationLevel
  two_digit_century_start                       = var.userTwoDigitCenturyStart
  unsupported_ddl_action                        = var.userUnsupportedDdlAction
  use_cached_result                             = var.userUsedCachedResult
  week_of_year_policy                           = var.userWeekOfYearPolicy
  week_start                                    = var.userWeekStart
}