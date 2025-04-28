import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericNetwork",
            "source_path": "../genericNetwork",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "network",
        "new_variable_prefix": "NWSAF_Network",
        "module_name": "network",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericSubnetwork",
            "source_path": "../genericSubnetwork",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "subNetwork",
        "new_variable_prefix": "NWSAF_SubNetwork",
        "module_name": "subnetwork",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericFirewall",
            "source_path": "../genericFirewall",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "firewall",
        "new_variable_prefix": "NWSAF_Firewall",
        "module_name": "firewall",
    },
]


print(terraform_modules_primer(modules=modules))
