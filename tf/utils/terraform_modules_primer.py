import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/iam/_UWP_userWithPolicyModule",
            "source_path": "../../aws/iam/_UWP_userWithPolicyModule",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "UWP",
        "new_variable_prefix": "IUWPAKSMS_UWP",
        "module_name": "UWP",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamAccessKey",
            "source_path": "../../aws/iam/genericIamAccessKey",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamAccessKey",
        "new_variable_prefix": "IUWPAKSMS_IamAccessKey",
        "module_name": "iamAccessKey",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/_SWV_secretWithVersion",
            "source_path": "../../aws/secretsmanager/_SWV_secretWithVersion",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SWV",
        "new_variable_prefix": "IUWPAKSMS_SWV",
        "module_name": "SWV",
    },
]


print(terraform_modules_primer(modules=modules))
