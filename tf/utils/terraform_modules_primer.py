import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/lambda/genericLambdaFunction",
            "source_path": "../../aws/lambda/genericLambdaFunction",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "lambdaFunction",
        "new_variable_prefix": "LFWLGSAR_LambdaFunctions",
        "module_name": "lambdaFunction",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRole",
            "source_path": "../../aws/iam/genericIamRole",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamRole",
        "new_variable_prefix": "LFWLGSAR_LambdaFunctionRole",
        "module_name": "lambdaFunctionRole",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamPolicy",
            "source_path": "../../aws/iam/genericIamPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamPolicy",
        "new_variable_prefix": "LFWLGSAR_LambdaGenericPolicy",
        "module_name": "lambdaGenericPolicy",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRolePolicyAttachment",
            "source_path": "../../aws/iam/genericIamRolePolicyAttachment",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "policyAttachment",
        "new_variable_prefix": "LFWLGSAR_LambdaGenericPolicyAttachment",
        "module_name": "lambdaGenericPolicyAttachment",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/genericSecret",
            "source_path": "../../aws/secretsmanager/genericSecret",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "secret",
        "new_variable_prefix": "LFWLGSAR_LambdaSecret",
        "module_name": "lambdaSecret",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/genericSecretVersion",
            "source_path": "../../aws/secretsmanager/genericSecretVersion",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "secretVersion",
        "new_variable_prefix": "LFWLGSAR_LambdaSecretVersion",
        "module_name": "lambdaSecretVersion",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamPolicy",
            "source_path": "../../aws/iam/genericIamPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamPolicy",
        "new_variable_prefix": "LFWLGSAR_LambdaSecretPolicy",
        "module_name": "lambdaSecretPolicy",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRolePolicyAttachment",
            "source_path": "../../aws/iam/genericIamRolePolicyAttachment",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "policyAttachment",
        "new_variable_prefix": "LFWLGSAR_LambdaSecretPolicyAttachment",
        "module_name": "lambdaSecretPolicyAttachment",
    },
    {
        "paths": {
            "project_path": "../aws/cloudwatch/genericLogGroup",
            "source_path": "../../aws/cloudwatch/genericLogGroup",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "logGroup",
        "new_variable_prefix": "LFWLGSAR_LambdaLogGroup",
        "module_name": "lambdaLogGroup",
    },
]


print(terraform_modules_primer(modules=modules))
