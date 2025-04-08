import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_SARARG_snowflakeAccountRoleAccountRoleGrants",
            "source_path": "../_SARARG_snowflakeAccountRoleAccountRoleGrants",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SARARG",
        "new_variable_prefix": "SS_SARARG",
        "module_name": "SARARG",
    },
    {
        "paths": {
            "project_path": "../projects/_SUP_snowflakeUserPks",
            "source_path": "../_SUP_snowflakeUserPks",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SUP",
        "new_variable_prefix": "SS_SUP",
        "module_name": "SUP",
    },
    {
        "paths": {
            "project_path": "../snowflake/principals/genericGrantAccountRole",
            "source_path": "../../snowflake/principals/genericGrantAccountRole",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "grantAccountRole",
        "new_variable_prefix": "SS_GrantAccountRole",
        "module_name": "grantAccountRole",
    },
]


print(terraform_modules_primer(modules=modules))
