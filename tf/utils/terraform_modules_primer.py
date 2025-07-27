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
            "project_path": "../aws/ec2/generic_key_pair",
            "source_path": "../../aws/ec2/generic_key_pair",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "key_pair",
        "new_variable_prefix": "key_pair",
        "module_name": "key_pair",
    },
    {
        "paths": {
            "project_path": "../aws/ec2/generic_security_group",
            "source_path": "../../aws/ec2/generic_security_group",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "sg",
        "new_variable_prefix": "sg",
        "module_name": "sg",
    },
    {
        "paths": {
            "project_path": "../aws/iam/generic_role",
            "source_path": "../../aws/iam/generic_role",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "role",
        "new_variable_prefix": "role",
        "module_name": "role",
    },
    {
        "paths": {
            "project_path": "../aws/iam/generic_policy",
            "source_path": "../../aws/iam/generic_policy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "policy",
        "new_variable_prefix": "policy",
        "module_name": "policy",
    },
    {
        "paths": {
            "project_path": "../aws/iam/generic_iam_policy_attachment",
            "source_path": "../../aws/iam/generic_iam_policy_attachment",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "pa",
        "new_variable_prefix": "pa",
        "module_name": "pa",
    },
    {
        "paths": {
            "project_path": "../aws/ec2/generic_instance",
            "source_path": "../../aws/ec2/generic_instance",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "instance",
        "new_variable_prefix": "instance",
        "module_name": "instance",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/generic_secret",
            "source_path": "../../aws/secretsmanager/generic_secret",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "secret",
        "new_variable_prefix": "secret",
        "module_name": "secret",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/generic_secret_version",
            "source_path": "../../aws/secretsmanager/generic_secret_version",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "secret_version",
        "new_variable_prefix": "secret_version",
        "module_name": "secret_version",
    },
]

parsed_modules: List[Module] = [Module(**mod) for mod in modules]

print(parsed_modules[0].paths.destination_path)
print(terraform_modules_primer(modules=parsed_modules))
