import json

from pydantic import BaseModel
from typing import List


class ModulePaths(BaseModel):
    project_path: str
    source_path: str
    destination_path: str


class Module(BaseModel):
    paths: ModulePaths
    previous_variable_prefix: str
    new_variable_prefix: str
    module_name: str


def terraform_modules_primer(modules: list[Module]) -> str:
    modules_dicts = [mod.model_dump() for mod in modules]
    modules_string = json.dumps(modules_dicts)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../github/repo/genericActionsSecret",
            "source_path": "../../github/repo/genericActionsSecret",
            "destination_path": "../projects/_GRSS_githubRepoSecretSwv",
        },
        "previous_variable_prefix": "secret",
        "new_variable_prefix": "GRSS_GithubActionsSecret",
        "module_name": "githubActionsSecret",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/_SWV_secretWithVersion",
            "source_path": "../../aws/secretsmanager/_SWV_secretWithVersion",
            "destination_path": "../projects/_GRSS_githubRepoSecretSwv",
        },
        "previous_variable_prefix": "SWV",
        "new_variable_prefix": "GRSS_SWV",
        "module_name": "SWV",
    },
]

parsed_modules: List[Module] = [Module(**mod) for mod in modules]

print(parsed_modules[0].paths.destination_path)
print(terraform_modules_primer(modules=parsed_modules))
