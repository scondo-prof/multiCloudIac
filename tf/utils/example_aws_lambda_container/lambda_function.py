import boto3
import os

def lambda_handler(event: dict, context: dict) -> dict:
    try:
        print(event)
        sm = boto3.client("secretsmanager")

        secret_value = sm.get_secret_value(
            SecretId=os.getenv("SECRET_NAME")
        )
        print(secret_value)
        return{
            "response": 200,
            "success message": "slappinDAbass"
        }
    except KeyError as e:
        return{
            "response": 500,
            "failure message": e
        }