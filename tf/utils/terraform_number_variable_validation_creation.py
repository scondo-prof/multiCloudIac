import json
import os

from dotenv import load_dotenv

load_dotenv()


def create_validator(
    min_number: int, max_number: int, variable_name: str, can_be_null: bool
) -> str:
    if can_be_null:
        return f"""
validation {{
    condition = {variable_name} == null || can({variable_name} >= {min_number} && {variable_name} <= {max_number})
    error_message = "{variable_name} must be Greater than or Equal to {min_number} AND Less Than or Equal to {max_number}"
  }}
"""
    else:
        return f"""
validation {{
    condition = {variable_name} >= {min_number} && {variable_name} <= {max_number}
    error_message = "{variable_name} must be Greater than or Equal to {min_number} AND Less Than or Equal to {max_number}"
  }}
"""


print(
    create_validator(
        min_number=os.getenv("MIN_NUMBER"),
        max_number=os.getenv("MAX_NUMBER"),
        variable_name=os.getenv("VARIABLE_NAME"),
        can_be_null=os.getenv("CAN_BE_NULL", False),
    )
)
