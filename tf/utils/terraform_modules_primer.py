import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_SS_SarargSup",
            "source_path": "../_SS_SarargSup",
            "destination_path": "../projects/_SS_SibsSs",
        },
        "previous_variable_prefix": "SS",
        "new_variable_prefix": "SS_SS",
        "module_name": "SS",
    },
    {
        "paths": {
            "project_path": "../projects/_SIBS_spcrdfgIuwpaksmsBwvSwv",
            "source_path": "../_SIBS_spcrdfgIuwpaksmsBwvSwv",
            "destination_path": "../projects/_SS_SibsSs",
        },
        "previous_variable_prefix": "SIBS",
        "new_variable_prefix": "SS_SIBS",
        "module_name": "SIBS",
    },
]


print(terraform_modules_primer(modules=modules))
