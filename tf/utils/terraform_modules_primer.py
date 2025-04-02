import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../github/org/genericOrgSecret",
            "source_path": "../../github/org/genericOrgSecret",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "secret",
        "new_variable_prefix": "GOSAS_GhOrgSecret",
        "module_name": "ghOrgSecret",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/_SWV_secretWithVersion",
            "source_path": "../../aws/secretsmanager/_SWV_secretWithVersion",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SWV",
        "new_variable_prefix": "GOSAS_SWV",
        "module_name": "SWV",
    },
]


print(terraform_modules_primer(modules=modules))
