import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/sns/_TWS_topicWithSubscription",
            "source_path": "../../aws/sns/_TWS_topicWithSubscription",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "TWS_",
        "new_variable_prefix": "ABT_TWS_",
        "module_name": "TWS",
    },
    {
        "paths": {
            "project_path": "../aws/budgets/genericFilterBudget",
            "source_path": "../../aws/budgets/genericFilterBudget",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "budget",
        "new_variable_prefix": "ABT_budget",
        "module_name": "budget",
    },
]


print(terraform_modules_primer(modules=modules))
