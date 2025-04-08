import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_PKS_privateKeySwv",
            "source_path": "../_PKS_privateKeySwv",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "PKS",
        "new_variable_prefix": "SUP_PKS",
        "module_name": "PKS",
    },
    {
        "paths": {
            "project_path": "../snowflake/principals/genericUser",
            "source_path": "../../snowflake/principals/genericUser",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "user",
        "new_variable_prefix": "SUP_SnowflakeUser",
        "module_name": "snowflakeUser",
    },
]


print(terraform_modules_primer(modules=modules))
