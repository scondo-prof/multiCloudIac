import boto3

import os


def lambda_handler(event, context):

    print("gobble gobble")
    sm = boto3.client("secretsmanager")
    secret_name = os.getenv("SECRET_NAME")
    print(secret_name)
    print(sm.get_secret_value(SecretId=secret_name))


lambda_handler("s", "w")
