resourceName = "rats-in-the-kitchen"

projectName = "ratatouille"

deployedDate = "01-03-2024"

AGRAMVKUP_LambdaPermissionAction = "lambda:InvokeFunction"

AGRAMVKUP_LambdaPermissionFunctionName = "rats-in-the-kitchen-lambda-function"

AGRAMVKUP_LambdaPermissionPrincipal = "apigateway.amazonaws.com"

AGRAMVKUP_ResourcePathPart = "api"

AGRAMVKUP_MethodHttpMethod = "POST"

AGRAMVKUP_MethodAuthorization = "NONE"

AGRAMVKUP_MethodApiKeyRequired = true

AGRAMVKUP_MethodRequestModels = {
  "application/json" = "api"
}

AGRAMVKUP_MethodResponseStatusCode = 200

AGRAMVKUP_MethodResponseModels = {
  "application/json" = "Empty"
}

AGRAMVKUP_RequestValidatorName = "api"

AGRAMVKUP_RequestValidatorValidateRequestBody = true

AGRAMVKUP_ModelName = "api"

AGRAMVKUP_ModelSchemaFile = "modelSchemaFiles/ex_AGRAMVKUP_api_get.json"


AGRAMVKUP_ModelContentType = "application/json"

AGRAMVKUP_IntegrationHttpMethod = "POST"

AGRAMVKUP_IntegrationIntegrationHttpMethod = "POST"

AGRAMVKUP_IntegrationType = "AWS_PROXY"

AGRAMVKUP_IntegrationUri = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:708508995810:function:rats-in-the-kitchen-lambda-function/invocations"

AGRAMVKUP_ApiKeyEnabled = true

AGRAMVKUP_UsagePlanKeyType = "API_KEY"