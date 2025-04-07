import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../random/genericRandomPassword",
            "source_path": "../../random/genericRandomPassword",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "password",
        "new_variable_prefix": "PKS_Password",
        "module_name": "password",
    },
    {
        "paths": {
            "project_path": "../tls/genericTlsPrivateKey",
            "source_path": "../../tls/genericTlsPrivateKey",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "privateKey",
        "new_variable_prefix": "PKS_PrivateKey",
        "module_name": "privateKey",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/_SWV_secretWithVersion",
            "source_path": "../../aws/secretsmanager/_SWV_secretWithVersion",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SWV",
        "new_variable_prefix": "PKS_SWV",
        "module_name": "SWV",
    },
]


print(terraform_modules_primer(modules=modules))
