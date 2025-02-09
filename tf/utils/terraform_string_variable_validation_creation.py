import json
import os

from dotenv import load_dotenv

load_dotenv()


def create_valid_variables_list(valid_variables_string: str) -> list[str]:
    variables_list = valid_variables_string.split(",")
    valid_variables_list = []

    for variable in variables_list:
        variable = variable.replace("and ", "")
        variable = variable.replace("or", "")
        variable = variable.strip()
        valid_variables_list.append(variable)

    return valid_variables_list


def create_validation(
    variable_name: str,
    valid_variables_list: list[str],
    valid_variables_string: str,
    can_be_null: bool,
):
    if can_be_null:
        return f"""
validation {{
    condition = {variable_name} == null || can(contains({json.dumps(valid_variables_list, indent=4)}, {variable_name}))
    error_message = "Valid inputs for | variable: {variable_name} | are: {valid_variables_string}"
  }}
"""
    else:
        return f"""
validation {{
    condition = contains({json.dumps(valid_variables_list, indent=4)}, {variable_name})
    error_message = "Valid inputs for | variable: {variable_name} | are: {valid_variables_string}"
  }}
"""


def main(valid_variables_string: str, variable_name: str, can_be_null: bool) -> None:
    valid_variables_list = create_valid_variables_list(
        valid_variables_string=valid_variables_string
    )

    print(
        create_validation(
            variable_name=variable_name,
            valid_variables_list=valid_variables_list,
            valid_variables_string=valid_variables_string,
            can_be_null=can_be_null,
        )
    )


main(
    valid_variables_string=os.getenv("VALID_VARIABLES"),
    variable_name=os.getenv("VARIABLE_NAME"),
    can_be_null=os.getenv("CAN_BE_NULL", False),
)
