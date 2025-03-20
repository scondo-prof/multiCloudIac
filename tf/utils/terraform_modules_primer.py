import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/ecr/genericEcrRepository",
            "source_path": "../../aws/ecr/genericEcrRepository",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "ecrRepository",
        "new_variable_prefix": "CECC_EcrRepository",
        "module_name": "ecrRepository",
    },
    {
        "paths": {
            "project_path": "../aws/codebuild/genericCodebuildProject",
            "source_path": "../../aws/codebuild/genericCodebuildProject",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "codebuildProject",
        "new_variable_prefix": "CECC_CodebuildProject",
        "module_name": "codebuildProject",
    },
    {
        "paths": {
            "project_path": "../aws/codebuild/genericCodebuildSourceCredential",
            "source_path": "../../aws/codebuild/genericCodebuildSourceCredential",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "credentials",
        "new_variable_prefix": "CECC_CodebuildCredentials",
        "module_name": "codebuildCredentials",
    },
    {
        "paths": {
            "project_path": "../aws/codebuild/genericCodebuildWebhook",
            "source_path": "../../aws/codebuild/genericCodebuildWebhook",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "webhook",
        "new_variable_prefix": "CECC_CodebuildWebhook",
        "module_name": "codebuildWebhook",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRole",
            "source_path": "../../aws/iam/genericIamRole",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamRole",
        "new_variable_prefix": "CECC_CodebuildRole",
        "module_name": "codebuildRole",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamPolicy",
            "source_path": "../../aws/iam/genericIamPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamPolicy",
        "new_variable_prefix": "CECC_CodebuildRolePolicy",
        "module_name": "codebuildRolePolicy",
    },
    {
        "paths": {
            "project_path": "../aws/cloudwatch/genericLogGroup",
            "source_path": "../../aws/cloudwatch/genericLogGroup",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "logGroup",
        "new_variable_prefix": "CECC_CodebuildLogGroup",
        "module_name": "codebuildLogGroup",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRolePolicyAttachment",
            "source_path": "../../aws/iam/genericIamRolePolicyAttachment",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "policyAttachment",
        "new_variable_prefix": "CECC_CodebuildRolePolicyAttachment",
        "module_name": "codebuildRolePolicyAttachment",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamPolicy",
            "source_path": "../../aws/iam/genericIamPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamPolicy",
        "new_variable_prefix": "CECC_CodebuildRoleEcrPolicy",
        "module_name": "codebuildRoleEcrPolicy",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRolePolicyAttachment",
            "source_path": "../../aws/iam/genericIamRolePolicyAttachment",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "policyAttachment",
        "new_variable_prefix": "CECC_CodebuildRoleEcrPolicyAttachment",
        "module_name": "codebuildRoleEcrPolicyAttachment",
    },
]


print(terraform_modules_primer(modules=modules))
