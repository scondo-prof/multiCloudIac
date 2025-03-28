import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../azurerm/keyVault/genericKeyVaultSecret",
            "source_path": "../../azurerm/keyVault/genericKeyVaultSecret",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "keyVaultSecret",
        "new_variable_prefix": "RGKVASAR_KeyVaultSecret",
        "module_name": "keyVaultSecret",
    },
]


print(terraform_modules_primer(modules=modules))
