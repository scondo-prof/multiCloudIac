import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_CLCC_containerLambdaCiCd",
            "source_path": "../_CLCC_containerLambdaCiCd",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "CLCC_",
        "new_variable_prefix": "CLFER_CLCC_",
        "module_name": "CLCC",
    },
    {
        "paths": {
            "project_path": "../aws/eventbridge/genericEventRule",
            "source_path": "../../aws/eventbridge/genericEventRule",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "eventRule",
        "new_variable_prefix": "CLFER_EventRuleLambda",
        "module_name": "eventRuleLambda",
    },
    {
        "paths": {
            "project_path": "../aws/eventbridge/genericEventTarget",
            "source_path": "../../aws/eventbridge/genericEventTarget",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "eventTarget",
        "new_variable_prefix": "CLFER_EventTargetLambda",
        "module_name": "eventTargetLambda",
    },
    {
        "paths": {
            "project_path": "../aws/lambda/genericLambdaFunctionPermission",
            "source_path": "../../aws/lambda/genericLambdaFunctionPermission",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "lambdaPermission",
        "new_variable_prefix": "CLFER_LambdaPermissionEventRule",
        "module_name": "lambdaPermissionEventRule",
    },
]


print(terraform_modules_primer(modules=modules))
