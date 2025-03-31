import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "source_path": "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "alertPolicy",
        "new_variable_prefix": "CRDPFG_CloudRunLogsAlertPolicy",
        "module_name": "cloudRunLogsAlertPolicy",
    },
]


print(terraform_modules_primer(modules=modules))
