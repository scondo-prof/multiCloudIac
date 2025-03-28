import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_CECC_codebuildEcrCiCd",
            "source_path": "../_CECC_codebuildEcrCiCd",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "CECC_",
        "new_variable_prefix": "CLCC_CECC_",
        "module_name": "CLCC",
    },
    {
        "paths": {
            "project_path": "../projects/_LFWLGSAR_lambdaFunctionWithLogGroupSecretAndRole",
            "source_path": "../_LFWLGSAR_lambdaFunctionWithLogGroupSecretAndRole",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "LFWLGSAR_",
        "new_variable_prefix": "CLCC_LFWLGSAR_",
        "module_name": "LFWLGSAR",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamPolicy",
            "source_path": "../../aws/iam/genericIamPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamPolicy",
        "new_variable_prefix": "CLCC_IamPolicyUpdateLambda",
        "module_name": "iamPolicyUpdateLambda",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRolePolicyAttachment",
            "source_path": "../../aws/iam/genericIamRolePolicyAttachment",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "policyAttachment",
        "new_variable_prefix": "CLCC_PolicyAttachmentUpdateLambda",
        "module_name": "policyAttachmentUpdateLambda",
    },
]


print(terraform_modules_primer(modules=modules))
