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

#---

#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/grant_privileges_to_account_role#schema

variable "grantPrivilegesAccountRoleName" {
  type = string
}

variable "grantPrivilegesAllPrivileges" {
  type    = bool
  default = null
}

variable "grantPrivilegesAlwaysApply" {
  type    = bool
  default = null
}

variable "grantPrivilegesAlwaysApplyTrigger" {
  type    = string
  default = null
}

variable "grantPrivilegesOnAccount" {
  type    = bool
  default = null
}

variable "grantPrivilegesObjects" {
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