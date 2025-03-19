import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/secretsManager/genericSecret",
            "source_path": "../genericSecret",
            "destination_path": "../gcp/secretsManager/_SWSV_secretWithSecretVersion",
        },
        "previous_variable_prefix": "secret",
        "new_variable_prefix": "SWSV_Secret",
        "module_name": "Secret",
    },
    {
        "paths": {
            "project_path": "../gcp/secretsManager/genericSecretVersion",
            "source_path": "../genericSecretVersion",
            "destination_path": "../gcp/secretsManager/_SWSV_secretWithSecretVersion",
        },
        "previous_variable_prefix": "secretVersion",
        "new_variable_prefix": "SWSV_SecretVersion",
        "module_name": "SecretVersion",
    },
]


print(terraform_modules_primer(modules=modules))
