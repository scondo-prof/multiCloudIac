import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_CECC_codebuildEcrCiCd",
            "source_path": "../_CECC_codebuildEcrCiCd",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "CECC_",
        "new_variable_prefix": "CLCC_CECC_",
        "module_name": "CECC",
    },
    {
        "paths": {
            "project_path": "../projects/_LFWLGSAR_lambdaFunctionWithLogGroupSecretAndRole",
            "source_path": "../_LFWLGSAR_lambdaFunctionWithLogGroupSecretAndRole",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "LFWLGSAR_",
        "new_variable_prefix": "CLCC_LFWLGSAR_",
        "module_name": "LFWLGSAR",
    },
]


print(terraform_modules_primer(modules=modules))
