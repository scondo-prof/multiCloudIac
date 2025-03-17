from dotenv import load_dotenv
import os

load_dotenv()


def escape_character_string_create(input: str) -> str:
    output = input.replace('"', '\\"')
    output = output.replace("\n", "")
    output = output.replace(" ", "")
    print(output)
    return output


input = os.getenv("ENV_VARS")

escape_character_string_create(input=input)
