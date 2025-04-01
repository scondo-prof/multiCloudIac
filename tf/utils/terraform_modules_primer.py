import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/_NWEIPN_networkWithExternalIpNat",
            "source_path": "../../gcp/cloudComputeNetwork/_NWEIPN_networkWithExternalIpNat",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "NWEIPN",
        "new_variable_prefix": "CSCRAPFG_NWEIPN",
        "module_name": "NWEIPN",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudSql/_CSDIU_cloudSqlDatabaseInstanceUser",
            "source_path": "../../gcp/cloudSql/_CSDIU_cloudSqlDatabaseInstanceUser",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "CSDIU",
        "new_variable_prefix": "CSCRAPFG_CSDIU",
        "module_name": "CSDIU",
    },
    {
        "paths": {
            "project_path": "../projects/_CRDPFG_cloudRunDeploymentPushFromGithub",
            "source_path": "../_CRDPFG_cloudRunDeploymentPushFromGithub",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "CRDPFG",
        "new_variable_prefix": "CSCRAPFG_CRDPFG",
        "module_name": "CRDPFG",
    },
]


print(terraform_modules_primer(modules=modules))
