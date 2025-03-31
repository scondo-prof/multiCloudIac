import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/iam/cloudBuildCloudRunRoleServiceBinding",
            "source_path": "../../iam/cloudBuildCloudRunRoleServiceBinding",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "serviceAccount",
        "new_variable_prefix": "cloudbuildTriggerServiceAccount",
        "module_name": "cloudbuildTriggerServiceAccount",
    },
]


print(terraform_modules_primer(modules=modules))
