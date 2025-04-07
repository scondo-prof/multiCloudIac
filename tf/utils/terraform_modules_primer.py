import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_CRDPRFG_cloudRunDeploymentPullRequestFromGithub",
            "source_path": "../_CRDPRFG_cloudRunDeploymentPullRequestFromGithub",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "CRDPRFG",
        "new_variable_prefix": "SPCRDFG_CRDPRFG",
        "module_name": "CRDPRFG",
    },
    {
        "paths": {
            "project_path": "../projects/_CRDPFG_cloudRunDeploymentPushFromGithub",
            "source_path": "../_CRDPFG_cloudRunDeploymentPushFromGithub",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "CRDPFG",
        "new_variable_prefix": "SPCRDFG_CRDPFG",
        "module_name": "CRDPFG",
    },
]


print(terraform_modules_primer(modules=modules))
