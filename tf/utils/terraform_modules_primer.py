import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/_NWEIPN_networkWithExternalIpNat",
            "source_path": "../../gcp/cloudComputeNetwork/_NWEIPN_networkWithExternalIpNat",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "NWEIPN_",
        "new_variable_prefix": "CSCRAPFG_NWEIPN_",
        "module_name": "NWEIPN",
    },
]


print(terraform_modules_primer(modules=modules))
