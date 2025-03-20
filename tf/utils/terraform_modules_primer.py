import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericRestApi",
            "source_path": "../../aws/apiGateway/genericRestApi",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "restApi",
        "new_variable_prefix": "AGRAMVKUP_RestApi",
        "module_name": "restApi",
    },
    {
        "paths": {
            "project_path": "../aws/lambda/genericLambdaFunctionPermission",
            "source_path": "../../aws/lambda/genericLambdaFunctionPermission",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "lambdaPermission",
        "new_variable_prefix": "AGRAMVKUP_LambdaPermission",
        "module_name": "lambdaPermission",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericResource",
            "source_path": "../../aws/apiGateway/genericResource",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "resource",
        "new_variable_prefix": "AGRAMVKUP_RestApiResource",
        "module_name": "restApiResource",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericMethod",
            "source_path": "../../aws/apiGateway/genericMethod",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "method",
        "new_variable_prefix": "AGRAMVKUP_RestApiMethod",
        "module_name": "restApiMethod",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericMethodResponse",
            "source_path": "../../aws/apiGateway/genericMethodResponse",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "methodResponse",
        "new_variable_prefix": "AGRAMVKUP_RestApiMethodResponse",
        "module_name": "restApiMethodResponse",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericRequestValidator",
            "source_path": "../../aws/apiGateway/genericRequestValidator",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "requestValidator",
        "new_variable_prefix": "AGRAMVKUP_RestApiRequestValidator",
        "module_name": "restApiRequestValidator",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericModel",
            "source_path": "../../aws/apiGateway/genericModel",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "model",
        "new_variable_prefix": "AGRAMVKUP_RestApiModel",
        "module_name": "restApiModel",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericIntegration",
            "source_path": "../../aws/apiGateway/genericIntegration",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "integration",
        "new_variable_prefix": "AGRAMVKUP_RestApiIntegration",
        "module_name": "restApiIntegration",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericApiKey",
            "source_path": "../../aws/apiGateway/genericApiKey",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "apiKey",
        "new_variable_prefix": "AGRAMVKUP_RestApiKey",
        "module_name": "restApiKey",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericUsagePlan",
            "source_path": "../../aws/apiGateway/genericUsagePlan",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "usagePlan",
        "new_variable_prefix": "AGRAMVKUP_RestApiUsagePlan",
        "module_name": "restApiUsagePlan",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericUsagePlanKey",
            "source_path": "../../aws/apiGateway/genericUsagePlanKey",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "usagePlanKey",
        "new_variable_prefix": "AGRAMVKUP_RestApiUsagePlanKey",
        "module_name": "restApiUsagePlanKey",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericStage",
            "source_path": "../../aws/apiGateway/genericStage",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "stage",
        "new_variable_prefix": "AGRAMVKUP_RestApiStage",
        "module_name": "restApiStage",
    },
    {
        "paths": {
            "project_path": "../aws/apiGateway/genericDeployment",
            "source_path": "../../aws/apiGateway/genericDeployment",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "deployment",
        "new_variable_prefix": "AGRAMVKUP_RestApiDeployment",
        "module_name": "restApiDeployment",
    },
]


print(terraform_modules_primer(modules=modules))
