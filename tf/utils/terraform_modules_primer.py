import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/iam/genericServiceAccount",
            "source_path": "../genericServiceAccount",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "serviceAccount",
        "new_variable_prefix": "serviceAccount",
        "module_name": "serviceAccount",
    },
    {
        "paths": {
            "project_path": "../gcp/iam/genericGoogleProjectIamRole",
            "source_path": "../genericGoogleProjectIamRole",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "role",
        "new_variable_prefix": "role",
        "module_name": "role",
    },
    {
        "paths": {
            "project_path": "../gcp/iam/genericProjectIamBinding",
            "source_path": "../genericProjectIamBinding",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamBinding",
        "new_variable_prefix": "iamBinding",
        "module_name": "iamBinding",
    },
]


print(terraform_modules_primer(modules=modules))
