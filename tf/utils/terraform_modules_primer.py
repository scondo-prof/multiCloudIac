import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_CLCC_containerLambdaCiCd",
            "source_path": "../_CLCC_containerLambdaCiCd",
            "destination_path": "../projects/_CSQSNLSM_ClccSqsQueueS3NotificationLambdaSourceMapping",
        },
        "previous_variable_prefix": "CLCC",
        "new_variable_prefix": "CSQSNLSM_CLCC",
        "module_name": "CLCC",
    },
    {
        "paths": {
            "project_path": "../aws/sqs/genericQueue",
            "source_path": "../../aws/sqs/genericQueue",
            "destination_path": "../projects/_CSQSNLSM_ClccSqsQueueS3NotificationLambdaSourceMapping",
        },
        "previous_variable_prefix": "queue",
        "new_variable_prefix": "CSQSNLSM_S3Queue",
        "module_name": "s3Queue",
    },
    {
        "paths": {
            "project_path": "../aws/sqs/genericQueuePolicy",
            "source_path": "../../aws/sqs/genericQueuePolicy",
            "destination_path": "../projects/_CSQSNLSM_ClccSqsQueueS3NotificationLambdaSourceMapping",
        },
        "previous_variable_prefix": "queuePolicy",
        "new_variable_prefix": "CSQSNLSM_S3QueuePolicy",
        "module_name": "s3QueuePolicy",
    },
    {
        "paths": {
            "project_path": "../aws/s3/genericBucketNotification",
            "source_path": "../../aws/s3/genericBucketNotification",
            "destination_path": "../projects/_CSQSNLSM_ClccSqsQueueS3NotificationLambdaSourceMapping",
        },
        "previous_variable_prefix": "bucketNotification",
        "new_variable_prefix": "CSQSNLSM_LambdaBucketNotification",
        "module_name": "lambdaBucketNotification",
    },
    {
        "paths": {
            "project_path": "../aws/lambda/genericLambdaEventSourceMapping",
            "source_path": "../../aws/lambda/genericLambdaEventSourceMapping",
            "destination_path": "../projects/_CSQSNLSM_ClccSqsQueueS3NotificationLambdaSourceMapping",
        },
        "previous_variable_prefix": "eventSourceMapping",
        "new_variable_prefix": "CSQSNLSM_S3EventSourceMapping",
        "module_name": "s3EventSourceMapping",
    },
]


print(terraform_modules_primer(modules=modules))
