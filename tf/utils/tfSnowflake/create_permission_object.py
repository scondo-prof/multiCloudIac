import json
import os

from dotenv import load_dotenv

load_dotenv()


def create_permissions(
    object_preface: str, object_type: str, privileges: list[str]
) -> str:
    count = 0
    permissions = ""
    with open("snowflake_objects.txt", "r") as infile:
        snowflake_objects = infile.readlines()

        for snowflake_object in snowflake_objects:
            count += 1
            snowflake_object = snowflake_object.replace("\n", "")

            permission = f"""{{
    on_schema_object = {{
      object_name = {object_preface}.{snowflake_object}
      object_type = {object_type}
    }}
    privileges = {privileges}
  }}"""
            permissions += permission + ",\n"

    infile.close()

    with open("snowflake_permissions.txt", "w") as outfile:
        outfile.write(permissions)
    outfile.close()

    return f"Permissions Written: {count}"


print(
    create_permissions(
        object_preface="FIVETRAN_DATABASE.GOOGLE_SHEETS_F001102",
        object_type="TABLE",
        privileges=["DELETE", "INSERT", "SELECT", "UPDATE", "TRUNCATE", "UPDATE"],
    )
)
