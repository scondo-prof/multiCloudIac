import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/iam/genericIamPolicy",
            "source_path": "../../aws/iam/genericIamPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamPolicy",
        "new_variable_prefix": "CLCC_CodebuildLambdaBuildPolicy",
        "module_name": "codebuildLambdaBuildPolicy",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRolePolicyAttachment",
            "source_path": "../../aws/iam/genericIamRolePolicyAttachment",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "policyAttachment",
        "new_variable_prefix": "CLCC_CodebuildLambdaBuildPolicyAttachment",
        "module_name": "codebuildLambdaBuildPolicyAttachment",
    },
]


print(terraform_modules_primer(modules=modules))
