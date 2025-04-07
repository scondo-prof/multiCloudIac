import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_SPCRDFG_stagingProdCloudRunDeploymentFromGithub",
            "source_path": "../_SPCRDFG_stagingProdCloudRunDeploymentFromGithub",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SPCRDFG",
        "new_variable_prefix": "SIBS_SPCRDFG",
        "module_name": "SPCRDFG",
    },
    {
        "paths": {
            "project_path": "../projects/_IUWPAKSMS_iamUserWithPolicyAccessKeySecretsManagerSecret",
            "source_path": "../_IUWPAKSMS_iamUserWithPolicyAccessKeySecretsManagerSecret",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "IUWPAKSMS",
        "new_variable_prefix": "SIBS_IUWPAKSMS",
        "module_name": "IUWPAKSMS",
    },
    {
        "paths": {
            "project_path": "../aws/s3/_BWV_bucketWithVersioning",
            "source_path": "../../aws/s3/_BWV_bucketWithVersioning",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "BWV",
        "new_variable_prefix": "SIBS_BWV",
        "module_name": "BWV",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/_SWV_secretWithVersion",
            "source_path": "../../aws/secretsmanager/_SWV_secretWithVersion",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SWV",
        "new_variable_prefix": "SIBS_SWV_Staging",
        "module_name": "SWV_Staging",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/_SWV_secretWithVersion",
            "source_path": "../../aws/secretsmanager/_SWV_secretWithVersion",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SWV",
        "new_variable_prefix": "SIBS_SWV_Prod",
        "module_name": "Prod",
    },
]


print(terraform_modules_primer(modules=modules))
