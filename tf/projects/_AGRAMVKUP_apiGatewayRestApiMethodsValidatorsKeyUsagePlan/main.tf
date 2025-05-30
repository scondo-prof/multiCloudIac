
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
  createdBy                        = var.createdBy
  deployedDate                     = var.deployedDate
  tfModule                         = var.tfModule
  additionalTags                   = var.additionalTags
}

#---

module "lambdaPermission" {
  source                            = "../../aws/lambda/genericLambdaFunctionPermission"
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

module "restApiResource" {
  source            = "../../aws/apiGateway/genericResource"
  awsRegion         = var.awsRegion
  resourceRestApiId = module.restApi.restApiId
  resourceParentId  = module.restApi.restApiRootResourceId
  resourcePathPart  = var.AGRAMVKUP_RestApiResourcePathPart
}

#---

module "restApiMethod" {
  source                    = "../../aws/apiGateway/genericMethod"
  awsRegion                 = var.awsRegion
  methodRestApiId           = module.restApi.restApiId
  methodResourceId          = module.restApiResource.resourceId
  methodHttpMethod          = var.AGRAMVKUP_RestApiMethodHttpMethod
  methodAuthorization       = var.AGRAMVKUP_RestApiMethodAuthorization
  methodAuthorizerId        = var.AGRAMVKUP_RestApiMethodAuthorizerId
  methodAuthorizationScopes = var.AGRAMVKUP_RestApiMethodAuthorizationScopes
  methodApiKeyRequired      = var.AGRAMVKUP_RestApiMethodApiKeyRequired
  methodOperationName       = var.AGRAMVKUP_RestApiMethodOperationName
  methodRequestModels       = var.AGRAMVKUP_RestApiMethodRequestModels
  methodRequestValidatorId  = module.restApiRequestValidator.requestValidatorId
  methodRequestParameters   = var.AGRAMVKUP_RestApiMethodRequestParameters
}

#---

module "restApiMethodResponse" {
  source                   = "../../aws/apiGateway/genericMethodResponse"
  awsRegion                = var.awsRegion
  methodResponseRestApiId  = module.restApi.restApiId
  methodResponseResourceId = module.restApiResource.resourceId
  methodResponseHttpMethod = var.AGRAMVKUP_RestApiMethodResponseHttpMethod
  methodResponseStatusCode = var.AGRAMVKUP_RestApiMethodResponseStatusCode
  methodResponseModels     = var.AGRAMVKUP_RestApiMethodResponseModels
  methodResponseParameters = var.AGRAMVKUP_RestApiMethodResponseParameters
}

#---

module "restApiRequestValidator" {
  source                                    = "../../aws/apiGateway/genericRequestValidator"
  awsRegion                                 = var.awsRegion
  resourceName                              = var.resourceName
  requestValidatorRestApiId                 = module.restApi.restApiId
  requestValidatorValidateRequestBody       = var.AGRAMVKUP_RestApiRequestValidatorValidateRequestBody
  requestValidatorValidateRequestParameters = var.AGRAMVKUP_RestApiRequestValidatorValidateRequestParameters
}

#---

module "restApiModel" {
  source           = "../../aws/apiGateway/genericModel"
  awsRegion        = var.awsRegion
  modelRestApiId   = module.restApi.restApiId
  modelName        = var.AGRAMVKUP_RestApiModelName
  modelDescription = var.AGRAMVKUP_RestApiModelDescription
  modelContentType = var.AGRAMVKUP_RestApiModelContentType
  modelSchemaFile  = var.AGRAMVKUP_RestApiModelSchemaFile
}

#---

module "restApiIntegration" {
  source                           = "../../aws/apiGateway/genericIntegration"
  awsRegion                        = var.awsRegion
  integrationRestApiId             = module.restApi.restApiId
  integrationResourceId            = module.restApiResource.resourceId
  integrationHttpMethod            = var.AGRAMVKUP_RestApiIntegrationHttpMethod
  integrationIntegrationHttpMethod = var.AGRAMVKUP_RestApiIntegrationIntegrationHttpMethod
  integrationType                  = var.AGRAMVKUP_RestApiIntegrationType
  integrationConnectionType        = var.AGRAMVKUP_RestApiIntegrationConnectionType
  integrationConnectionId          = var.AGRAMVKUP_RestApiIntegrationConnectionId
  integrationUri                   = var.AGRAMVKUP_RestApiIntegrationUri
  integrationCredentials           = var.AGRAMVKUP_RestApiIntegrationCredentials
  integrationRequestTemplates      = var.AGRAMVKUP_RestApiIntegrationRequestTemplates
  integrationRequestParameters     = var.AGRAMVKUP_RestApiIntegrationRequestParameters
  integrationPassthroughBehavior   = var.AGRAMVKUP_RestApiIntegrationPassthroughBehavior
  integrationCacheKeyParameters    = var.AGRAMVKUP_RestApiIntegrationCacheKeyParameters
  integrationCacheNamespace        = var.AGRAMVKUP_RestApiIntegrationCacheNamespace
  integrationContentHandling       = var.AGRAMVKUP_RestApiIntegrationContentHandling
  integrationTimeoutMilliseconds   = var.AGRAMVKUP_RestApiIntegrationTimeoutMilliseconds
  integrationTlsConfig             = var.AGRAMVKUP_RestApiIntegrationTlsConfig
}

#---

module "restApiKey" {
  source            = "../../aws/apiGateway/genericApiKey"
  awsRegion         = var.awsRegion
  resourceName      = var.resourceName
  apiKeyCustomerId  = var.AGRAMVKUP_RestApiKeyCustomerId
  apiKeyDescription = var.AGRAMVKUP_RestApiKeyDescription
  apiKeyEnabled     = var.AGRAMVKUP_RestApiKeyEnabled
  apiKeyValue       = var.AGRAMVKUP_RestApiKeyValue
  projectName       = var.projectName
  createdBy         = var.createdBy
  deployedDate      = var.deployedDate
  tfModule          = var.tfModule
  additionalTags    = var.additionalTags
}

#---

module "restApiUsagePlan" {
  source               = "../../aws/apiGateway/genericUsagePlan"
  awsRegion            = var.awsRegion
  resourceName         = var.resourceName
  usagePlanDescription = var.AGRAMVKUP_RestApiUsagePlanDescription
  usagePlanApiStages = merge({
    api_id = module.restApi.restApiId
    stage  = module.restApiStage.stageArn
  }, var.AGRAMVKUP_RestApiUsagePlanApiStages)
  usagePlanQuotaSettings    = var.AGRAMVKUP_RestApiUsagePlanQuotaSettings
  usagePlanThrottleSettings = var.AGRAMVKUP_RestApiUsagePlanThrottleSettings
  usagePlanProductCode      = var.AGRAMVKUP_RestApiUsagePlanProductCode
  projectName               = var.projectName
  createdBy                 = var.createdBy
  deployedDate              = var.deployedDate
  tfModule                  = var.tfModule
  additionalTags            = var.additionalTags
}

#---

module "restApiUsagePlanKey" {
  source                  = "../../aws/apiGateway/genericUsagePlanKey"
  awsRegion               = var.awsRegion
  usagePlanKeyId          = module.restApiKey.apiKeyId #var.AGRAMVKUP_RestApiUsagePlanKeyId
  usagePlanKeyType        = var.AGRAMVKUP_RestApiUsagePlanKeyType
  usagePlanKeyUsagePlanId = module.restApiUsagePlan.usagePlanId #var.AGRAMVKUP_RestApiUsagePlanKeyUsagePlanId
}

#---

module "restApiStage" {
  source                    = "../../aws/apiGateway/genericStage"
  awsRegion                 = var.awsRegion
  stageRestApiId            = module.restApi.restApiId
  resourceName              = var.resourceName
  stageDeploymentId         = module.restApiDeployment.deploymentId
  stageAccessLogSettings    = var.AGRAMVKUP_RestApiStageAccessLogSettings
  stageCacheClusterEnabled  = var.AGRAMVKUP_RestApiStageCacheClusterEnabled
  stageCacheClusterSize     = var.AGRAMVKUP_RestApiStageCacheClusterSize
  stageCanarySettings       = var.AGRAMVKUP_RestApiStageCanarySettings
  stageClientCertificateId  = var.AGRAMVKUP_RestApiStageClientCertificateId
  stageDescription          = var.AGRAMVKUP_RestApiStageDescription
  stageDocumentationVersion = var.AGRAMVKUP_RestApiStageDocumentationVersion
  stageVariables            = var.AGRAMVKUP_RestApiStageVariables
  projectName               = var.projectName
  createdBy                 = var.createdBy
  deployedDate              = var.deployedDate
  tfModule                  = var.tfModule
  additionalTags            = var.additionalTags
  stageXrayTracingEnabled   = var.AGRAMVKUP_RestApiStageXrayTracingEnabled
}

#---

module "restApiDeployment" {
  source                = "../../aws/apiGateway/genericDeployment"
  awsRegion             = var.awsRegion
  deploymentDescription = var.AGRAMVKUP_RestApiDeploymentDescription
  deploymentRestApiId   = module.restApi.restApiId
  deploymentTriggers    = var.AGRAMVKUP_RestApiDeploymentTriggers
  deploymentVariables   = var.AGRAMVKUP_RestApiDeploymentVariables
}

#---
