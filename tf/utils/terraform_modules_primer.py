import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/secretsManager/_SWSV_secretWithSecretVersion",
            "source_path": "../../gcp/secretsManager/_SWSV_secretWithSecretVersion",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SWSV",
        "new_variable_prefix": "CRDPFG_SWSV_Cloudbuild",
        "module_name": "SWSV_Cloudbuild",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudBuild/githubRepoPushCloudbuildTrigger",
            "source_path": "../gcp/cloudBuild/githubRepoPushCloudbuildTrigger",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "cloudbuildTrigger",
        "new_variable_prefix": "CRDPFG_CloudbuildTrigger",
        "module_name": "cloudbuildTrigger",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudMonitoring/cloudRunError",
            "source_path": "../../gcp/cloudMonitoring/cloudRunError",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "cloudRunAlertPolicy",
        "new_variable_prefix": "CRDPFG_CloudRunAlertPolicy",
        "module_name": "cloudRunAlertPolicy",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "source_path": "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "alertPolicy",
        "new_variable_prefix": "CRDPFG_CloudRunMemAlertPolicy",
        "module_name": "cloudRunMemAlertPolicy",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "source_path": "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "alertPolicy",
        "new_variable_prefix": "CRDPFG_CloudRunCpuAlertPolicy",
        "module_name": "cloudRunCpuAlertPolicy",
    },
]


print(terraform_modules_primer(modules=modules))
