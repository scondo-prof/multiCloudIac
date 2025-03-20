import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/sns/genericSnsTopic",
            "source_path": "../genericSnsTopic",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "snsTopic",
        "new_variable_prefix": "TWS_SnsTopic",
        "module_name": "snsTopic",
    },
    {
        "paths": {
            "project_path": "../aws/sns/genericSnsTopicSubscription",
            "source_path": "../genericSnsTopicSubscription",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "snsTopicSubscription",
        "new_variable_prefix": "TWS_SnsTopicSubscription",
        "module_name": "snsTopicSubscription",
    },
]


print(terraform_modules_primer(modules=modules))
