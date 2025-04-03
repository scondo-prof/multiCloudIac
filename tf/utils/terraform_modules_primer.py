import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/s3/genericBucket",
            "source_path": "../genericBucket",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "s3Bucket",
        "new_variable_prefix": "BWV_S3Bucket",
        "module_name": "s3Bucket",
    },
    {
        "paths": {
            "project_path": "../aws/s3/genericBucketVersioning",
            "source_path": "../genericBucketVersioning",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "s3BucketVersioning",
        "new_variable_prefix": "BWV_S3BucketVersioning",
        "module_name": "s3BucketVersioning",
    },
]


print(terraform_modules_primer(modules=modules))
