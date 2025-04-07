import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../snowflake/principals/genericAccountRole",
            "source_path": "../../snowflake/principals/genericAccountRole",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "accountRole",
        "new_variable_prefix": "SARARG_AccountRole",
        "module_name": "accountRole",
    },
    {
        "paths": {
            "project_path": "../snowflake/principals/genericGrantPrivilegesToAccountRole",
            "source_path": "../../snowflake/principals/genericGrantPrivilegesToAccountRole",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "grantPrivileges",
        "new_variable_prefix": "SARARG_GrantPrivileges",
        "module_name": "grantPrivileges",
    },
]


print(terraform_modules_primer(modules=modules))
