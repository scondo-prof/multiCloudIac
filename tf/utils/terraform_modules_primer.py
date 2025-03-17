import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericNetworkRouter",
            "source_path": "../genericNetworkRouter",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "networkRouter",
        "new_variable_prefix": "NWEA_NetworkRouter",
        "module_name": "networkRouter",
    },
]


print(terraform_modules_primer(modules=modules))
