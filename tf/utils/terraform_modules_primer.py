import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_CLCC_containerLambdaCiCd",
            "source_path": "../_CLCC_containerLambdaCiCd",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "CLCC",
        "new_variable_prefix": "CSQSNLSM_CLCC",
        "module_name": "CLCC",
    },
    {
        "paths": {
            "project_path": "../aws/sqs/genericQueue",
            "source_path": "../../aws/sqs/genericQueue",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "queue",
        "new_variable_prefix": "CSQSNLSM_QueueS3",
        "module_name": "queueS3",
    },
    {
        "paths": {
            "project_path": "../aws/sqs/genericQueuePolicy",
            "source_path": "../../aws/sqs/genericQueuePolicy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "queuePolicy",
        "new_variable_prefix": "CSQSNLSM_QueuePolicyS3Access",
        "module_name": "queuePolicyS3Access",
    },
    {
        "paths": {
            "project_path": "../aws/s3/genericBucketNotification",
            "source_path": "../../aws/s3/genericBucketNotification",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "bucketNotification",
        "new_variable_prefix": "CSQSNLSM_BucketNotificationToQueue",
        "module_name": "bucketNotificationToQueue",
    },
    {
        "paths": {
            "project_path": "../aws/lambda/genericLambdaEventSourceMapping",
            "source_path": "../../aws/lambda/genericLambdaEventSourceMapping",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "eventSourceMapping",
        "new_variable_prefix": "CSQSNLSM_EventSourceMappingToQueue",
        "module_name": "eventSourceMappingToQueue",
    },
]


print(terraform_modules_primer(modules=modules))
