import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/_NWSAF_networkWithSubnetworkAndFirewall",
            "source_path": "../_NWSAF_networkWithSubnetworkAndFirewall",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "NWSAF",
        "new_variable_prefix": "NWEIPN_NWSAF",
        "module_name": "NWSAF",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/_NWEA_natWithExternalAddress",
            "source_path": "../_NWEA_natWithExternalAddress",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "NWEA",
        "new_variable_prefix": "NWEIPN_NWEA",
        "module_name": "NWEA",
    },
]


print(terraform_modules_primer(modules=modules))
