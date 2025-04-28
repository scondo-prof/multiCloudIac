import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericNetworkAddress",
            "source_path": "../genericNetworkAddress",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "networkAddress",
        "new_variable_prefix": "NWEA_NetworkAddress",
        "module_name": "networkAddress",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericNetworkRouter",
            "source_path": "../genericNetworkRouter",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "networkRouter",
        "new_variable_prefix": "NWEA_NetworkRouter",
        "module_name": "networkRouter",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericNetworkRouterNat",
            "source_path": "../genericNetworkRouterNat",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "nat",
        "new_variable_prefix": "NWEA_Nat",
        "module_name": "nat",
    },
]


print(terraform_modules_primer(modules=modules))
