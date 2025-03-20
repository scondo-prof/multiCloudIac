import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../azuread/applications/genericApplication",
            "source_path": "../../azuread/applications/genericApplication",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "azureAdApplication",
        "new_variable_prefix": "CARARAA_AzureAdResourceApplication",
        "module_name": "azureAdResourceApplication",
    },
    {
        "paths": {
            "project_path": "../azuread/applications/genericApplication",
            "source_path": "../../azuread/applications/genericApplication",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "azureAdApplication",
        "new_variable_prefix": "CARARAA_AzureAdClientApplication",
        "module_name": "azureAdClientApplication",
    },
    {
        "paths": {
            "project_path": "../azuread/applications/genericPermissionScope",
            "source_path": "../../azuread/applications/genericPermissionScope",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "azureAdApplicationPermissionScope",
        "new_variable_prefix": "CARARAA_AzureAdResourceApplicationPermissionScope",
        "module_name": "azureAdResourceApplicationPermissionScope",
    },
    {
        "paths": {
            "project_path": "../azuread/applications/genericPreAuthorized",
            "source_path": "../../azuread/applications/genericPreAuthorized",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "azureAdApplicationPreAuthorized",
        "new_variable_prefix": "CARARAA_AzureAdResourceApplicationPreAuthorized",
        "module_name": "azureAdResourceApplicationPreAuthorized",
    },
    {
        "paths": {
            "project_path": "../azuread/applications/genericSecret",
            "source_path": "../../azuread/applications/genericSecret",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "azureAdApplicationPassword",
        "new_variable_prefix": "CARARAA_AzureAdClientApplicationPassword",
        "module_name": "azureAdClientApplicationPassword",
    },
    {
        "paths": {
            "project_path": "../azuread/applications/genericApiAccess",
            "source_path": "../../azuread/applications/genericApiAccess",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "azureAdApplicationApiAccess",
        "new_variable_prefix": "CARARAA_AzureAdClientApplicationApiAccess",
        "module_name": "azureAdClientApplicationApiAccess",
    },
]


print(terraform_modules_primer(modules=modules))
