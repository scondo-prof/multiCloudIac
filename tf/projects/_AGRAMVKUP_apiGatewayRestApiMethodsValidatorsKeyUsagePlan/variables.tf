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
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api#argument-reference

variable "AGRAMVKUP_RestApiKeySource" {
  type = string
  validation {
    condition = var.AGRAMVKUP_RestApiKeySource == null || can(contains([
      "HEADER",
      "AUTHORIZER"
    ], var.AGRAMVKUP_RestApiKeySource))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiKeySource | are: HEADER, AUTHORIZER"
  }
  default = null
}

variable "AGRAMVKUP_RestApiBinaryMediaTypes" {
  type    = list(string)
  default = null
}

variable "AGRAMVKUP_RestApiBody" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiDisableExecuteApiEndpoint" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_RestApiEndpointConfiguration" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api#endpoint_configuration
  type = object({
    types            = list(string)
    vpc_endpoint_ids = optional(list(string), null)
  })
  default = null
}

variable "AGRAMVKUP_RestApiMinimumCompressionSize" {
  type = number
  validation {
    condition     = var.AGRAMVKUP_RestApiMinimumCompressionSize == null || can(var.AGRAMVKUP_RestApiMinimumCompressionSize >= -1 && var.AGRAMVKUP_RestApiMinimumCompressionSize <= 10485760)
    error_message = "var.AGRAMVKUP_RestApiMinimumCompressionSize must be Greater than or Equal to -1 AND Less Than or Equal to 10485760"
  }
  default = null
}

variable "AGRAMVKUP_RestApiFailOnWarnings" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_RestApiParameters" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_RestApiPolicy" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiPutRestApiMode" {
  type = string
  validation {
    condition = var.AGRAMVKUP_RestApiPutRestApiMode == null || can(contains([
      "merge",
      "overwrite"
    ], var.AGRAMVKUP_RestApiPutRestApiMode))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiPutRestApiMode | are: merge, overwrite"
  }
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission#argument-reference
variable "AGRAMVKUP_LambdaPermissionAction" {
  type = string
}

#The Event Source Token to validate. Used with Alexa Skills.
variable "AGRAMVKUP_LambdaPermissionEventSourceToken" {
  type    = string
  default = null
}

variable "AGRAMVKUP_LambdaPermissionFunctionName" {
  type = string
}

#Only supported for lambda:InvokeFunctionUrl action.
variable "AGRAMVKUP_LambdaPermissionUrlAuthType" {
  type = string
  validation {
    condition = var.AGRAMVKUP_LambdaPermissionUrlAuthType == null || can(contains([
      "AWS_IAM",
      "NONE"
    ], var.AGRAMVKUP_LambdaPermissionUrlAuthType))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_LambdaPermissionUrlAuthType | are: AWS_IAM, and NONE"
  }
  default = null
}

variable "AGRAMVKUP_LambdaPermissionPrincipal" {
  type = string
}

variable "AGRAMVKUP_LambdaPermissionQualifier" {
  type    = string
  default = null
}

variable "AGRAMVKUP_LambdaPermissionSourceAccount" {
  type    = number
  default = null
}

variable "AGRAMVKUP_LambdaPermissionSourceArn" {
  type    = string
  default = null
}

variable "AGRAMVKUP_LambdaPermissionStatementId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_LambdaPermissionStatementIdPrefix" {
  type    = string
  default = null
}

variable "AGRAMVKUP_LambdaPermissionPrincipalOrgId" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/AGRAMVKUP_Resources/api_gateway_AGRAMVKUP_Resource#argument-reference

variable "AGRAMVKUP_ResourcePathPart" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method#argument-reference

variable "AGRAMVKUP_MethodHttpMethod" {
  type = string
  validation {
    condition = contains([
      "GET",
      "POST",
      "PUT",
      "DELETE",
      "HEAD",
      "OPTIONS",
      "ANY"
    ], var.AGRAMVKUP_MethodHttpMethod)
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_MethodHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY"
  }
}

variable "AGRAMVKUP_MethodAuthorization" {
  type = string
  validation {
    condition = contains([
      "NONE",
      "CUSTOM",
      "AWS_IAM",
      "COGNITO_USER_POOLS"
    ], var.AGRAMVKUP_MethodAuthorization)
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_MethodAuthorization | are: NONE, CUSTOM, AWS_IAM, COGNITO_USER_POOLS"
  }
}

variable "AGRAMVKUP_MethodAuthorizerId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_MethodAuthorizationScopes" {
  type    = list(string)
  default = null
}

variable "AGRAMVKUP_MethodApiKeyRequired" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_MethodOperationName" {
  type    = string
  default = null
}

variable "AGRAMVKUP_MethodRequestModels" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_MethodRequestValidatorId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_MethodRequestParameters" {
  type    = map(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_response#argument-reference

variable "AGRAMVKUP_MethodResponseStatusCode" {
  type = number
}

variable "AGRAMVKUP_MethodResponseModels" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_MethodResponseParameters" {
  type    = map(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_request_validator#argument-reference

variable "AGRAMVKUP_RequestValidatorName" {
  type = string
}

variable "AGRAMVKUP_RequestValidatorValidateRequestBody" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_RequestValidatorValidateRequestParameters" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_model#argument-reference

variable "AGRAMVKUP_ModelName" {
  type = string
}

variable "AGRAMVKUP_ModelDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_ModelContentType" {
  type = string
}

variable "AGRAMVKUP_ModelSchemaFile" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway#argument-reference

variable "AGRAMVKUP_IntegrationHttpMethod" {
  type = string
  validation {
    condition = contains([
      "GET",
      "POST",
      "PUT",
      "DELETE",
      "HEAD",
      "OPTION",
      "ANY"
    ], var.AGRAMVKUP_IntegrationHttpMethod)
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_IntegrationHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTION, ANY"
  }
}

variable "AGRAMVKUP_IntegrationIntegrationHttpMethod" {
  type = string
  validation {
    condition = var.AGRAMVKUP_IntegrationIntegrationHttpMethod == null || can(contains([
      "GET",
      "POST",
      "PUT",
      "DELETE",
      "HEAD",
      "OPTION",
      "ANY"
    ], var.AGRAMVKUP_IntegrationIntegrationHttpMethod))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_IntegrationIntegrationHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTION, ANY"
  }
  default = null
}

variable "AGRAMVKUP_IntegrationType" {
  type = string
  validation {
    condition = var.AGRAMVKUP_IntegrationType == null || can(contains([
      "HTTP",
      "MOCK",
      "AWS",
      "AWS_PROXY",
      "HTTP_PROX"
    ], var.AGRAMVKUP_IntegrationType))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_IntegrationType | are: HTTP, MOCK, AWS, AWS_PROXY, HTTP_PROX"
  }
  default = null
}

variable "AGRAMVKUP_IntegrationConnectionType" {
  type = string
  validation {
    condition = var.AGRAMVKUP_IntegrationConnectionType == null || can(contains([
      "INTERNET",
      "VPC_LINK"
    ], var.AGRAMVKUP_IntegrationConnectionType))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_IntegrationConnectionType | are: INTERNET, VPC_LINK"
  }
  default = null
}

variable "AGRAMVKUP_IntegrationConnectionId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_IntegrationUri" {
  type    = string
  default = null
}

variable "AGRAMVKUP_IntegrationCredentials" {
  type    = string
  default = null
}

variable "AGRAMVKUP_IntegrationRequestTemplates" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_IntegrationRequestParameters" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_IntegrationPassthroughBehavior" {
  type = string
  validation {
    condition = var.AGRAMVKUP_IntegrationPassthroughBehavior == null || can(contains([
      "WHEN_NO_MATCH",
      "WHEN_NO_TEMPLATES",
      "NEVER"
    ], var.AGRAMVKUP_IntegrationPassthroughBehavior))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_IntegrationPassthroughBehavior | are: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, NEVER"
  }
  default = null
}

variable "AGRAMVKUP_IntegrationCacheKeyParameters" {
  type    = list(string)
  default = null
}

variable "AGRAMVKUP_IntegrationCacheNamespace" {
  type    = string
  default = null
}

variable "AGRAMVKUP_IntegrationContentHandling" {
  type = string
  validation {
    condition = var.AGRAMVKUP_IntegrationContentHandling == null || can(contains([
      "CONVERT_TO_BINARY",
      "CONVERT_TO_TEXT"
    ], var.AGRAMVKUP_IntegrationContentHandling))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_IntegrationContentHandling | are: CONVERT_TO_BINARY, CONVERT_TO_TEXT"
  }
  default = null
}

variable "AGRAMVKUP_IntegrationTimeoutMilliseconds" {
  type = number
  validation {
    condition     = var.AGRAMVKUP_IntegrationTimeoutMilliseconds == null || can(var.AGRAMVKUP_IntegrationTimeoutMilliseconds >= 50 && var.AGRAMVKUP_IntegrationTimeoutMilliseconds <= 300000)
    error_message = "var.AGRAMVKUP_IntegrationTimeoutMilliseconds must be Greater than or Equal to 50 AND Less Than or Equal to 300000"
  }
  default = null
}

variable "AGRAMVKUP_IntegrationTlsConfig" {
  type = object({
    insecure_skip_verification = optional(bool, null)
  })
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key#argument-reference

variable "AGRAMVKUP_ApiKeyCustomerId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_ApiKeyDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_ApiKeyEnabled" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_ApiKeyValue" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#argument-reference

variable "AGRAMVKUP_UsagePlanDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_UsagePlanApiStages" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#api_id-1
  type = object({
    throttle = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#path-1
      path        = string
      burst_limit = optional(number, null)
      rate_limit  = optional(number, null)
    }), null)
  })
  default = {}
}

variable "AGRAMVKUP_UsagePlanQuotaSettings" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#limit-1
  type = object({
    limit  = optional(number, null)
    offset = optional(number, null)
    period = optional(string, null)
  })
  default = null
}

variable "AGRAMVKUP_UsagePlanThrottleSettings" {
  type = object({
    burst_limit = optional(number, null)
    rate_limit  = optional(number, null)
  })
  default = null
}

variable "AGRAMVKUP_UsagePlanProductCode" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key#argument-reference

variable "AGRAMVKUP_UsagePlanKeyType" {
  type = string
  validation {
    condition = contains([
      "API_KEY"
    ], var.AGRAMVKUP_UsagePlanKeyType)
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_UsagePlanKeyType | are: API_KEY"
  }
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_AGRAMVKUP_Stage#argument-reference

variable "AGRAMVKUP_StageAccessLogSettings" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_AGRAMVKUP_Stage#access-log-settings
  type = object({
    destination_arn = string
    format          = string
  })
  default = null
}

variable "AGRAMVKUP_StageCacheClusterEnabled" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_StageCacheClusterSize" {
  type = number
  validation {
    condition = var.AGRAMVKUP_StageCacheClusterSize == null || can(contains([
      0.5,
      1.6,
      6.1,
      13.5,
      28.4,
      58.2,
      118,
      237
    ], var.AGRAMVKUP_StageCacheClusterSize))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_StageCacheClusterSize | are: 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118 and 237"
  }
  default = null
}

variable "AGRAMVKUP_StageCanarySettings" {
  type = object({
    deployment_id                      = string
    percent_traffic                    = optional(string, null)
    AGRAMVKUP_Stage_variable_overrides = optional(map(string), null)
    use_AGRAMVKUP_Stage_cache          = optional(bool, null)
  })
  default = null
}

variable "AGRAMVKUP_StageClientCertificateId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_StageDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_StageDocumentationVersion" {
  type    = string
  default = null
}

variable "AGRAMVKUP_StageVariables" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_StageXrayTracingEnabled" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_AGRAMVKUP_Deployment#argument-reference

variable "AGRAMVKUP_DeploymentDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_DeploymentTriggers" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_DeploymentVariables" {
  type    = map(string)
  default = null
}

#---
