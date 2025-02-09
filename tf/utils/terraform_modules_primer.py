import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/s3/_BWV_bucketWithVersioning",
            "source_path": "../../aws/s3/_BWV_bucketWithVersioning",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "BWV",
        "new_variable_prefix": "IRIPSB_BWV",
        "module_name": "BWV",
    },
]


print(terraform_modules_primer(modules=modules))
