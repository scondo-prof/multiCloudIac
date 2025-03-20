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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/AGRAMVKUP_RestApiResources/api_gateway_AGRAMVKUP_RestApiResource#argument-reference

variable "AGRAMVKUP_RestApiResourceRestApiId" {
  type = string
}

variable "AGRAMVKUP_RestApiResourceParentId" {
  type = string
}

variable "AGRAMVKUP_RestApiResourcePathPart" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_AGRAMVKUP_RestApiMethod#argument-reference

variable "AGRAMVKUP_RestApiMethodRestApiId" {
  type = string
}

variable "AGRAMVKUP_RestApiMethodResourceId" {
  type = string
}

variable "AGRAMVKUP_RestApiMethodHttpMethod" {
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
    ], var.AGRAMVKUP_RestApiMethodHttpMethod)
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiMethodHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY"
  }
}

variable "AGRAMVKUP_RestApiMethodAuthorization" {
  type = string
  validation {
    condition = contains([
      "NONE",
      "CUSTOM",
      "AWS_IAM",
      "COGNITO_USER_POOLS"
    ], var.AGRAMVKUP_RestApiMethodAuthorization)
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiMethodAuthorization | are: NONE, CUSTOM, AWS_IAM, COGNITO_USER_POOLS"
  }
}

variable "AGRAMVKUP_RestApiMethodAuthorizerId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiMethodAuthorizationScopes" {
  type    = list(string)
  default = null
}

variable "AGRAMVKUP_RestApiMethodApiKeyRequired" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_RestApiMethodOperationName" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiMethodRequestModels" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_RestApiMethodRequestValidatorId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiMethodRequestParameters" {
  type    = map(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_response#argument-reference

variable "AGRAMVKUP_RestApiMethodResponseRestApiId" {
  type = string
}

variable "AGRAMVKUP_RestApiMethodResponseResourceId" {
  type = string
}

variable "AGRAMVKUP_RestApiMethodResponseHttpMethod" {
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
    ], var.AGRAMVKUP_RestApiMethodResponseHttpMethod)
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiMethodResponseHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY"
  }
}

variable "AGRAMVKUP_RestApiMethodResponseStatusCode" {
  type = number
}

variable "AGRAMVKUP_RestApiMethodResponseModels" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_RestApiMethodResponseParameters" {
  type    = map(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_request_validator#argument-reference

variable "AGRAMVKUP_RestApiRequestValidatorRestApiId" {
  type = string
}

variable "AGRAMVKUP_RestApiRequestValidatorValidateRequestBody" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_RestApiRequestValidatorValidateRequestParameters" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_AGRAMVKUP_RestApiModel#argument-reference

variable "AGRAMVKUP_RestApiModelRestApiId" {
  type = string
}

variable "AGRAMVKUP_RestApiModelName" {
  type = string
}

variable "AGRAMVKUP_RestApiModelDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiModelContentType" {
  type = string
}

variable "AGRAMVKUP_RestApiModelSchemaFile" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_AGRAMVKUP_RestApiIntegration#argument-reference

variable "AGRAMVKUP_RestApiIntegrationRestApiId" {
  type = string
}

variable "AGRAMVKUP_RestApiIntegrationResourceId" {
  type = string
}

variable "AGRAMVKUP_RestApiIntegrationHttpMethod" {
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
    ], var.AGRAMVKUP_RestApiIntegrationHttpMethod)
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiIntegrationHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTION, ANY"
  }
}

variable "AGRAMVKUP_RestApiIntegrationIntegrationHttpMethod" {
  type = string
  validation {
    condition = var.AGRAMVKUP_RestApiIntegrationIntegrationHttpMethod == null || can(contains([
      "GET",
      "POST",
      "PUT",
      "DELETE",
      "HEAD",
      "OPTION",
      "ANY"
    ], var.AGRAMVKUP_RestApiIntegrationIntegrationHttpMethod))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiIntegrationIntegrationHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTION, ANY"
  }
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationType" {
  type = string
  validation {
    condition = var.AGRAMVKUP_RestApiIntegrationType == null || can(contains([
      "HTTP",
      "MOCK",
      "AWS",
      "AWS_PROXY",
      "HTTP_PROX"
    ], var.AGRAMVKUP_RestApiIntegrationType))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiIntegrationType | are: HTTP, MOCK, AWS, AWS_PROXY, HTTP_PROX"
  }
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationConnectionType" {
  type = string
  validation {
    condition = var.AGRAMVKUP_RestApiIntegrationConnectionType == null || can(contains([
      "INTERNET",
      "VPC_LINK"
    ], var.AGRAMVKUP_RestApiIntegrationConnectionType))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiIntegrationConnectionType | are: INTERNET, VPC_LINK"
  }
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationConnectionId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationUri" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationCredentials" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationRequestTemplates" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationRequestParameters" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationPassthroughBehavior" {
  type = string
  validation {
    condition = var.AGRAMVKUP_RestApiIntegrationPassthroughBehavior == null || can(contains([
      "WHEN_NO_MATCH",
      "WHEN_NO_TEMPLATES",
      "NEVER"
    ], var.AGRAMVKUP_RestApiIntegrationPassthroughBehavior))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiIntegrationPassthroughBehavior | are: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, NEVER"
  }
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationCacheKeyParameters" {
  type    = list(string)
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationCacheNamespace" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationContentHandling" {
  type = string
  validation {
    condition = var.AGRAMVKUP_RestApiIntegrationContentHandling == null || can(contains([
      "CONVERT_TO_BINARY",
      "CONVERT_TO_TEXT"
    ], var.AGRAMVKUP_RestApiIntegrationContentHandling))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiIntegrationContentHandling | are: CONVERT_TO_BINARY, CONVERT_TO_TEXT"
  }
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationTimeoutMilliseconds" {
  type = number
  validation {
    condition     = var.AGRAMVKUP_RestApiIntegrationTimeoutMilliseconds == null || can(var.AGRAMVKUP_RestApiIntegrationTimeoutMilliseconds >= 50 && var.AGRAMVKUP_RestApiIntegrationTimeoutMilliseconds <= 300000)
    error_message = "var.AGRAMVKUP_RestApiIntegrationTimeoutMilliseconds must be Greater than or Equal to 50 AND Less Than or Equal to 300000"
  }
  default = null
}

variable "AGRAMVKUP_RestApiIntegrationTlsConfig" {
  type = object({
    insecure_skip_verification = optional(bool, null)
  })
  default = null
}

#---


#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key#argument-reference

variable "AGRAMVKUP_RestApiKeyCustomerId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiKeyDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiKeyEnabled" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_RestApiKeyValue" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#argument-reference

variable "AGRAMVKUP_RestApiUsagePlanDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiUsagePlanApiStages" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#api_id-1
  type = object({
    api_id = string
    stage  = string
    throttle = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#path-1
      path        = string
      burst_limit = optional(number, null)
      rate_limit  = optional(number, null)
    }), null)
  })
  default = null
}

variable "AGRAMVKUP_RestApiUsagePlanQuotaSettings" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#limit-1
  type = object({
    limit  = optional(number, null)
    offset = optional(number, null)
    period = optional(string, null)
  })
  default = null
}

variable "AGRAMVKUP_RestApiUsagePlanThrottleSettings" {
  type = object({
    burst_limit = optional(number, null)
    rate_limit  = optional(number, null)
  })
  default = null
}

variable "AGRAMVKUP_RestApiUsagePlanProductCode" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key#argument-reference

variable "AGRAMVKUP_RestApiUsagePlanKeyId" {
  type = string
}

variable "AGRAMVKUP_RestApiUsagePlanKeyType" {
  type = string
  validation {
    condition = contains([
      "API_KEY"
    ], var.AGRAMVKUP_RestApiUsagePlanKeyType)
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiUsagePlanKeyType | are: API_KEY"
  }
}

variable "AGRAMVKUP_RestApiUsagePlanKeyUsagePlanId" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_AGRAMVKUP_RestApiStage#argument-reference

variable "AGRAMVKUP_RestApiStageRestApiId" {
  type = string
}

variable "AGRAMVKUP_RestApiStageDeploymentId" {
  type = string
}

variable "AGRAMVKUP_RestApiStageAccessLogSettings" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_AGRAMVKUP_RestApiStage#access-log-settings
  type = object({
    destination_arn = string
    format          = string
  })
  default = null
}

variable "AGRAMVKUP_RestApiStageCacheClusterEnabled" {
  type    = bool
  default = null
}

variable "AGRAMVKUP_RestApiStageCacheClusterSize" {
  type = number
  validation {
    condition = var.AGRAMVKUP_RestApiStageCacheClusterSize == null || can(contains([
      0.5,
      1.6,
      6.1,
      13.5,
      28.4,
      58.2,
      118,
      237
    ], var.AGRAMVKUP_RestApiStageCacheClusterSize))
    error_message = "Valid inputs for | variable: var.AGRAMVKUP_RestApiStageCacheClusterSize | are: 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118 and 237"
  }
  default = null
}

variable "AGRAMVKUP_RestApiStageCanarySettings" {
  type = object({
    deployment_id            = string
    percent_traffic          = optional(string, null)
    AGRAMVKUP_RestApiStage_variable_overrides = optional(map(string), null)
    use_AGRAMVKUP_RestApiStage_cache          = optional(bool, null)
  })
  default = null
}

variable "AGRAMVKUP_RestApiStageClientCertificateId" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiStageDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiStageDocumentationVersion" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiStageVariables" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_RestApiStageXrayTracingEnabled" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_AGRAMVKUP_RestApiDeployment#argument-reference

variable "AGRAMVKUP_RestApiDeploymentDescription" {
  type    = string
  default = null
}

variable "AGRAMVKUP_RestApiDeploymentRestApiId" {
  type = string
}

variable "AGRAMVKUP_RestApiDeploymentTriggers" {
  type    = map(string)
  default = null
}

variable "AGRAMVKUP_RestApiDeploymentVariables" {
  type    = map(string)
  default = null
}

#---
