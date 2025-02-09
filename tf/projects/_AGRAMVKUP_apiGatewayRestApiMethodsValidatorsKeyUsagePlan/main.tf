
module "restApi" {
  source                           = "../../aws/apiGateway/genericRestApi"
  awsRegion                        = var.awsRegion
  restApiKeySource                 = var.AGRAMVKUP_RestApiKeySource
  restApiBinaryMediaTypes          = var.AGRAMVKUP_RestApiBinaryMediaTypes
  restApiBody                      = var.AGRAMVKUP_RestApiBody
  restApiDescription               = var.AGRAMVKUP_RestApiDescription
  restApiDisableExecuteApiEndpoint = var.AGRAMVKUP_RestApiDisableExecuteApiEndpoint
  restApiEndpointConfiguration     = var.AGRAMVKUP_RestApiEndpointConfiguration
  restApiMinimumCompressionSize    = var.AGRAMVKUP_RestApiMinimumCompressionSize
  resourceName                     = var.resourceName
  restApiFailOnWarnings            = var.AGRAMVKUP_RestApiFailOnWarnings
  restApiParameters                = var.AGRAMVKUP_RestApiParameters
  restApiPolicy                    = var.AGRAMVKUP_RestApiPolicy
  restApiPutRestApiMode            = var.AGRAMVKUP_RestApiPutRestApiMode
  projectName                      = var.projectName
  creator                          = var.creator
  deployedDate                     = var.deployedDate
  additionalTags                   = var.additionalTags
}

#---

module "lambdaPermission" {
  source = "../../aws/lambda/genericLambdaFunctionPermission"

  awsRegion                         = var.awsRegion
  lambdaPermissionAction            = var.AGRAMVKUP_LambdaPermissionAction
  lambdaPermissionEventSourceToken  = var.AGRAMVKUP_LambdaPermissionEventSourceToken
  lambdaPermissionFunctionName      = var.AGRAMVKUP_LambdaPermissionFunctionName
  lambdaPermissionUrlAuthType       = var.AGRAMVKUP_LambdaPermissionUrlAuthType
  lambdaPermissionPrincipal         = var.AGRAMVKUP_LambdaPermissionPrincipal
  lambdaPermissionQualifier         = var.AGRAMVKUP_LambdaPermissionQualifier
  lambdaPermissionSourceAccount     = var.AGRAMVKUP_LambdaPermissionSourceAccount
  lambdaPermissionSourceArn         = "${module.restApi.restApiExecutionArn}/*"
  lambdaPermissionStatementId       = var.AGRAMVKUP_LambdaPermissionStatementId
  lambdaPermissionStatementIdPrefix = var.AGRAMVKUP_LambdaPermissionStatementIdPrefix
  lambdaPermissionPrincipalOrgId    = var.AGRAMVKUP_LambdaPermissionPrincipalOrgId
}

#---

module "resource" {
  source            = "../../aws/apiGateway/genericResource"
  awsRegion         = var.awsRegion
  resourceRestApiId = module.restApi.restApiId
  resourceParentId  = module.restApi.restApiRootResourceId
  resourcePathPart  = var.AGRAMVKUP_ResourcePathPart
}

#---

module "method" {
  source                    = "../../aws/apiGateway/genericMethod"
  awsRegion                 = var.awsRegion
  methodRestApiId           = module.restApi.restApiId
  methodResourceId          = module.resource.resourceId
  methodHttpMethod          = var.AGRAMVKUP_MethodHttpMethod
  methodAuthorization       = var.AGRAMVKUP_MethodAuthorization
  methodAuthorizerId        = var.AGRAMVKUP_MethodAuthorizerId
  methodAuthorizationScopes = var.AGRAMVKUP_MethodAuthorizationScopes
  methodApiKeyRequired      = var.AGRAMVKUP_MethodApiKeyRequired
  methodOperationName       = var.AGRAMVKUP_MethodOperationName
  methodRequestModels       = var.AGRAMVKUP_MethodRequestModels
  methodRequestValidatorId  = module.requestValidator.requestValidatorId
  methodRequestParameters   = var.AGRAMVKUP_MethodRequestParameters
}

module "methodResponse" {
  source = "../../aws/apiGateway/genericMethodResponse"

  methodResponseRestApiId  = module.restApi.restApiId
  methodResponseResourceId = module.resource.resourceId
  methodResponseHttpMethod =module.method.methodHttpMethod
  methodResponseStatusCode =var.AGRAMVKUP_MethodResponseStatusCode
  methodResponseModels     =var.AGRAMVKUP_MethodResponseModels
  methodResponseParameters =var.AGRAMVKUP_MethodResponseParameters
}

module "requestValidator" {
  source                                    = "../../aws/apiGateway/genericRequestValidator"
  resourceName                              = var.AGRAMVKUP_RequestValidatorName
  requestValidatorRestApiId                 = module.restApi.restApiId
  requestValidatorValidateRequestBody       = var.AGRAMVKUP_RequestValidatorValidateRequestBody
  requestValidatorValidateRequestParameters = var.AGRAMVKUP_RequestValidatorValidateRequestParameters
}

#---

module "model" {
  source           = "../../aws/apiGateway/genericModel"
  awsRegion        = var.awsRegion
  modelRestApiId   = module.restApi.restApiId
  modelName        = var.AGRAMVKUP_ModelName
  modelDescription = var.AGRAMVKUP_ModelDescription
  modelContentType = var.AGRAMVKUP_ModelContentType
  modelSchemaFile  = var.AGRAMVKUP_ModelSchemaFile
}

#---

module "integration" {
  source                           = "../../aws/apiGateway/genericIntegration"
  awsRegion                        = var.awsRegion
  integrationRestApiId             = module.restApi.restApiId
  integrationResourceId            = module.resource.resourceId
  integrationHttpMethod            = var.AGRAMVKUP_IntegrationHttpMethod
  integrationIntegrationHttpMethod = var.AGRAMVKUP_IntegrationIntegrationHttpMethod
  integrationType                  = var.AGRAMVKUP_IntegrationType
  integrationConnectionType        = var.AGRAMVKUP_IntegrationConnectionType
  integrationConnectionId          = var.AGRAMVKUP_IntegrationConnectionId
  integrationUri                   = var.AGRAMVKUP_IntegrationUri
  integrationCredentials           = var.AGRAMVKUP_IntegrationCredentials
  integrationRequestTemplates      = var.AGRAMVKUP_IntegrationRequestTemplates
  integrationRequestParameters     = var.AGRAMVKUP_IntegrationRequestParameters
  integrationPassthroughBehavior   = var.AGRAMVKUP_IntegrationPassthroughBehavior
  integrationCacheKeyParameters    = var.AGRAMVKUP_IntegrationCacheKeyParameters
  integrationCacheNamespace        = var.AGRAMVKUP_IntegrationCacheNamespace
  integrationContentHandling       = var.AGRAMVKUP_IntegrationContentHandling
  integrationTimeoutMilliseconds   = var.AGRAMVKUP_IntegrationTimeoutMilliseconds
  integrationTlsConfig             = var.AGRAMVKUP_IntegrationTlsConfig
}

#---

module "apiKey" {
  source            = "../../aws/apiGateway/genericApiKey"
  awsRegion         = var.awsRegion
  resourceName      = var.resourceName
  apiKeyCustomerId  = var.AGRAMVKUP_ApiKeyCustomerId
  apiKeyDescription = var.AGRAMVKUP_ApiKeyDescription
  apiKeyEnabled     = var.AGRAMVKUP_ApiKeyEnabled
  apiKeyValue       = var.AGRAMVKUP_ApiKeyValue
  projectName       = var.projectName
  creator           = var.creator
  deployedDate      = var.deployedDate
  additionalTags    = var.additionalTags
}

#---

module "usagePlan" {
  source               = "../../aws/apiGateway/genericUsagePlan"
  awsRegion            = var.awsRegion
  resourceName         = var.resourceName
  usagePlanDescription = var.AGRAMVKUP_UsagePlanDescription
  usagePlanApiStages = merge({
    api_id = module.restApi.restApiId
    stage  = module.stage.stageName
  }, var.AGRAMVKUP_UsagePlanApiStages)
  usagePlanQuotaSettings    = var.AGRAMVKUP_UsagePlanQuotaSettings
  usagePlanThrottleSettings = var.AGRAMVKUP_UsagePlanThrottleSettings
  usagePlanProductCode      = var.AGRAMVKUP_UsagePlanProductCode
  projectName               = var.projectName
  creator                   = var.creator
  deployedDate              = var.deployedDate
  additionalTags            = var.additionalTags
}

#---

module "usagePlanKey" {
  source                  = "../../aws/apiGateway/genericUsagePlanKey"
  awsRegion               = var.awsRegion
  usagePlanKeyId          = module.apiKey.apiKeyId
  usagePlanKeyType        = var.AGRAMVKUP_UsagePlanKeyType
  usagePlanKeyUsagePlanId = module.usagePlan.usagePlanId
}

#---

module "stage" {
  source                    = "../../aws/apiGateway/genericStage"
  awsRegion                 = var.awsRegion
  stageRestApiId            = module.restApi.restApiId
  resourceName              = var.resourceName
  stageDeploymentId         = module.deployment.deploymentId
  stageAccessLogSettings    = var.AGRAMVKUP_StageAccessLogSettings
  stageCacheClusterEnabled  = var.AGRAMVKUP_StageCacheClusterEnabled
  stageCacheClusterSize     = var.AGRAMVKUP_StageCacheClusterSize
  stageCanarySettings       = var.AGRAMVKUP_StageCanarySettings
  stageClientCertificateId  = var.AGRAMVKUP_StageClientCertificateId
  stageDescription          = var.AGRAMVKUP_StageDescription
  stageDocumentationVersion = var.AGRAMVKUP_StageDocumentationVersion
  stageVariables            = var.AGRAMVKUP_StageVariables
  projectName               = var.projectName
  creator                   = var.creator
  deployedDate              = var.deployedDate
  additionalTags            = var.additionalTags
  stageXrayTracingEnabled   = var.AGRAMVKUP_StageXrayTracingEnabled
}

#---

module "deployment" {
  source                = "../../aws/apiGateway/genericDeployment"
  awsRegion             = var.awsRegion
  deploymentDescription = var.AGRAMVKUP_DeploymentDescription
  deploymentRestApiId   = module.restApi.restApiId
  deploymentTriggers    = var.AGRAMVKUP_DeploymentTriggers
  deploymentVariables   = var.AGRAMVKUP_DeploymentVariables
}

#---
