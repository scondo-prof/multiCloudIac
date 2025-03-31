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
        "new_variable_prefix": "CRDPRFG_SWSV",
        "module_name": "SWSV",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudBuild/githubRepoPullRequestCloudbuildTrigger",
            "source_path": "../../gcp/cloudBuild/githubRepoPullRequestCloudbuildTrigger",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "cloudBuildTrigger",
        "new_variable_prefix": "CRDPRFG_CloudBuildTrigger",
        "module_name": "cloudBuildTrigger",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "source_path": "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "alertPolicy",
        "new_variable_prefix": "CRDPRFG_AlertPolicyCloudRunAppLogs",
        "module_name": "alertPolicyCloudRunAppLogs",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "source_path": "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "alertPolicy",
        "new_variable_prefix": "CRDPRFG_AlertPolicyCloudRunAppCpuUsage",
        "module_name": "alertPolicyCloudRunAppCpuUsage",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "source_path": "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "alertPolicy",
        "new_variable_prefix": "CRDPRFG_AlertPolicyCloudRunAppMemUsage",
        "module_name": "alertPolicyCloudRunAppMemUsage",
    },
]


print(terraform_modules_primer(modules=modules))
