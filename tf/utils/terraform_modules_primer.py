import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericSubnetwork",
            "source_path": "../genericSubnetwork",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "subnetwork",
        "new_variable_prefix": "NWSAF_Subnetwork",
        "module_name": "subnetwork",
    },
]


print(terraform_modules_primer(modules=modules))
