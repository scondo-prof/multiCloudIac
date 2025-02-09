import os

import httpx
from dotenv import load_dotenv

load_dotenv()


def example_request():
    header = {"x-api-key": os.getenv("API_KEY")}
    body = {"api": "example-value"}

    response = httpx.post(
        url="https://pxh6scwas7.execute-api.us-east-1.amazonaws.com/rats-in-the-kitchen-stage/api",
        headers=header,
        json=body,
    )
    print(f"Response Status: {response}  |  Response Json: {response.json()}")


example_request()
