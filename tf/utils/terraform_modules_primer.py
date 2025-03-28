import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_CARARAA_clientAndResourceAppRegistrationAzureAd",
            "source_path": "../_CARARAA_clientAndResourceAppRegistrationAzureAd",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "CARARAA",
        "new_variable_prefix": "CR_CARARAA",
        "module_name": "CARARAA",
    },
    {
        "paths": {
            "project_path": "../projects/_RGKVASAR_resourceGroupKeyVaultAndSecretAzureRm",
            "source_path": "../_RGKVASAR_resourceGroupKeyVaultAndSecretAzureRm",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "RGKVASAR",
        "new_variable_prefix": "CR_RGKVASAR",
        "module_name": "RGKVASAR",
    },
]


print(terraform_modules_primer(modules=modules))
