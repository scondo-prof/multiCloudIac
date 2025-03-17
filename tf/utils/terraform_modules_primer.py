import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericNetwork",
            "source_path": "../genericNetwork",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "network",
        "new_variable_prefix": "NWSAF_Network",
        "module_name": "network",
    },
]


print(terraform_modules_primer(modules=modules))
