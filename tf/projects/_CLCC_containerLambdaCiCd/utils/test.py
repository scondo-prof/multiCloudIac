import os
import json

import boto3


def lambda_handler(event, context):
    print(event)

    try:
        print("gobble gobble")
        sm = boto3.client("secretsmanager")
        secret_name = os.getenv("SECRET_NAME")
        print(secret_name)
        print(sm.get_secret_value(SecretId=secret_name))
        print("hey... THAT WASNT A TURKEY")
        return {
            "isBase64Encoded": False,
            "statusCode": 200,
            "headers": {
                "Content-Type": "application/json",
                "Access-Control-Allow-Origin": "*",
            },
            "body": json.dumps({"message": event}),
        }
    except Exception as e:
        return {"response_code": 500, "error_message": e}
