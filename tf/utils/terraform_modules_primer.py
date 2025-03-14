import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericFirewall",
            "source_path": "../genericFirewall",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "firewall",
        "new_variable_prefix": "NWSAF_IngressFirewall",
        "module_name": "ingressFirewall",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericFirewall",
            "source_path": "../genericFirewall",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "firewall",
        "new_variable_prefix": "NWSAF_EgressFirewall",
        "module_name": "egressFirewall",
    },
]


print(terraform_modules_primer(modules=modules))
