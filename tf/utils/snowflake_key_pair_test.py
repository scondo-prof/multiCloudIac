import boto3
import json
import os

from dotenv import load_dotenv
from snowflake.connector import connect
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import serialization

load_dotenv()


def snowflake_connection():
    """
    This function creates a connection and cursor to the HIPAA Snowflake account.
    The steps taken in this function are required if you do not want to download a file of the Snowflake private key locally.
    Steps taken from https://community.snowflake.com/s/article/How-To-Connect-to-Snowflake-using-key-pair-authentication-directly-using-the-private-key-incode-with-the-Python-Connector

    If you do want to download the file locally, follow the steps in the standard documentation to establish the connection
    """
    sm = boto3.client("secretsmanager")

    snowflake_secrets = sm.get_secret_value(SecretId="<snowflake-secrets>")

    snowflake_secrets = json.loads(snowflake_secrets["SecretString"])

    # convert to byte strings
    private_key_bytes = snowflake_secrets["SNOWFLAKE_P8"].encode("utf-8")
    key_password_bytes = snowflake_secrets["SNOWFLAKE_P8_PASSPHRASE"].encode("utf-8")

    p_key = serialization.load_pem_private_key(
        private_key_bytes, password=key_password_bytes, backend=default_backend()
    )

    pkb = p_key.private_bytes(
        encoding=serialization.Encoding.DER,
        format=serialization.PrivateFormat.PKCS8,
        encryption_algorithm=serialization.NoEncryption(),
    )

    # Snowflake environment variables
    SNOWFLAKE_USERNAME = snowflake_secrets["SNOWFLAKE_USERNAME"]
    SNOWFLAKE_ACCOUNT_ID = snowflake_secrets["SNOWFLAKE_ACCOUNT_ID"]
    SNOWFLAKE_DATABASE = os.getenv("SNOWFLAKE_DATABASE")
    SNOWFLAKE_SCHEMA = os.getenv("SNOWFLAKE_SCHEMA")
    SNOWFLAKE_TABLE = os.getenv("SNOWFLAKE_TABLE")
    SNOWFLAKE_WAREHOUSE = snowflake_secrets["SNOWFLAKE_WAREHOUSE"]

    # Make the connection to the HIPAA Snowflake account
    ctx = connect(
        user=SNOWFLAKE_USERNAME,
        account=SNOWFLAKE_ACCOUNT_ID,
        warehouse=SNOWFLAKE_WAREHOUSE,
        database=SNOWFLAKE_DATABASE,
        schema=SNOWFLAKE_SCHEMA,
        table=SNOWFLAKE_TABLE,
        private_key=pkb,
    )

    cur = ctx.cursor()

    return ctx, cur


def test_query(query: str) -> None:
    _, cursor = snowflake_connection()

    cursor.execute(query)
    result = cursor.fetchone()

    print(result)


query = f"SELECT * from {os.getenv("SNOWFLAKE_TABLE")} limit 10;"

test_query(query=query)
