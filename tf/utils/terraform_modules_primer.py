import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/s3/_BWV_bucketWithVersioning",
            "source_path": "../../aws/s3/_BWV_bucketWithVersioning",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "BWV",
        "new_variable_prefix": "IRIPSB_BWV",
        "module_name": "BWV",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRole",
            "source_path": "../../aws/iam/genericIamRole",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamRole",
        "new_variable_prefix": "IRIPSB_IamRole",
        "module_name": "iamRole",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamPolicy",
            "source_path": "../../aws/iam/genericIamPolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "iamPolicy",
        "new_variable_prefix": "IRIPSB_IamPolicy",
        "module_name": "iamPolicy",
    },
    {
        "paths": {
            "project_path": "../aws/iam/genericIamRolePolicyAttachment",
            "source_path": "../../aws/iam/genericIamRolePolicyAttachment",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "policyAttachment",
        "new_variable_prefix": "IRIPSB_PolicyAttachmentIamPolicy",
        "module_name": "PolicyAttachmentIamPolicy",
    },
]


print(terraform_modules_primer(modules=modules))
