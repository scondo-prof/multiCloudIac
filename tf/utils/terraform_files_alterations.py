import json
import os
import re

from dotenv import load_dotenv

load_dotenv()


def modify_main_tf_file(
    paths: dict[str],
    previous_variable_prefix: str,
    new_variable_prefix: str,
    module_name: str,
) -> str:
    project_path = paths["project_path"]
    source_path = paths["source_path"]
    modified_main_tf_file = f"""
    module "{module_name}" {{
  source = "{source_path}"
"""
    if os.path.exists(f"{project_path}/main.tf"):
        variables = []
        with open(f"{project_path}/main.tf", "r") as mfile:
            terraform_logic = mfile.read()
        mfile.close()
        terraform_logic = terraform_logic.split("\n")
        for line in terraform_logic:
            if "var." in line:
                match = re.search(r"\bvar\.\w+", line)
                if match:
                    variable = match.group(0)
                    if not variable in variables:
                        variables.append(variable)

        for variable in variables:
            variable_name = variable.split(".")[1]
            new_variable_name = variable_name.replace(previous_variable_prefix, new_variable_prefix)
            modified_main_tf_file += f"{variable_name} = var.{new_variable_name}\n"
        modified_main_tf_file += "}"

        return modified_main_tf_file


def modify_outputs_tf_file(
    paths: dict[str, str],
    previous_variable_prefix: str,
    new_variable_prefix: str,
    module_name: str,
) -> str:
    project_path = paths["project_path"]

    if os.path.exists(f"{project_path}/outputs.tf"):
        with open(f"{project_path}/outputs.tf", "r") as cfile:
            content = cfile.read()

        # Use regex to match output blocks including optional sensitive flag
        output_blocks = re.findall(
            r'output\s+"(\w+)"\s+{\s+value\s+=\s+(.+?)(?:\s+sensitive\s+=\s+(true|false))?\s+}',
            content,
            re.DOTALL,
        )

        transformed_content = content

        for original_output_name, value, sensitive in output_blocks:
            new_output_name = original_output_name.replace(previous_variable_prefix, new_variable_prefix)
            new_value = f"module.{module_name}.{original_output_name}"

            # Construct new output block
            new_output_block = f'output "{new_output_name}" {{\n  value = {new_value}'
            if sensitive:
                new_output_block += f"\n  sensitive = {sensitive}"
            new_output_block += "\n}"

            # Replace the original block
            transformed_content = re.sub(
                rf'output\s+"{original_output_name}"\s+{{\s+value\s+=\s+.+?(?:\s+sensitive\s+=\s+(true|false))?\s+}}',
                new_output_block,
                transformed_content,
                flags=re.DOTALL,
            )

        transformed_content = transformed_content.replace("#---", "")

        return transformed_content


def modify_variables_tf_file(paths: dict[str], previous_variable_prefix: str, new_variable_prefix: str) -> str:
    project_path = paths["project_path"]
    if os.path.exists(f"{project_path}/variables.tf"):
        with open(f"{project_path}/variables.tf", "r") as vfile:
            variables_tf = vfile.read()
        variables_tf = variables_tf.replace(previous_variable_prefix, new_variable_prefix)
        variables_tf = variables_tf.replace("#---", "")

        return variables_tf


def modify_all_module_files(
    paths: dict[str],
    previous_variable_prefix: str,
    new_variable_prefix: str,
    module_name: str,
) -> dict:
    modified_tf_files = {}

    modified_main_tf_file = modify_main_tf_file(
        paths=paths,
        previous_variable_prefix=previous_variable_prefix,
        new_variable_prefix=new_variable_prefix,
        module_name=module_name,
    )

    modified_tf_files["main.tf"] = modified_main_tf_file

    modified_outputs_tf_file = modify_outputs_tf_file(
        paths=paths,
        previous_variable_prefix=previous_variable_prefix,
        new_variable_prefix=new_variable_prefix,
        module_name=module_name,
    )

    modified_tf_files["outputs.tf"] = modified_outputs_tf_file

    modified_variables_tf_file = modify_variables_tf_file(
        paths=paths,
        previous_variable_prefix=previous_variable_prefix,
        new_variable_prefix=new_variable_prefix,
    )

    modified_tf_files["variables.tf"] = modified_variables_tf_file

    return modified_tf_files


def create_new_module(
    modules: list[dict],
) -> str:
    return_message = ""
    modules = json.loads(modules)

    tf_files = {"main.tf": "", "outputs.tf": "", "variables.tf": ""}

    for module in modules:
        paths = module["paths"]
        previous_variable_prefix = module["previous_variable_prefix"]
        new_variable_prefix = module["new_variable_prefix"]
        module_name = module["module_name"]
        destination_path = paths["destination_path"]

        modified_tf_files = modify_all_module_files(
            paths=paths,
            previous_variable_prefix=previous_variable_prefix,
            new_variable_prefix=new_variable_prefix,
            module_name=module_name,
        )

        for file in modified_tf_files:
            tf_files[file] += f"{modified_tf_files[file]}\n"
            tf_files[file] += "\n#---"
            tf_files[file] += "\n"
            return_message += f"Completed: {file} | "
        return_message += "\n"

    for file in tf_files:
        with open(f"{destination_path}/{file}", "w") as outfile:
            outfile.write(tf_files[file])
    return return_message


print(create_new_module(modules=os.getenv("MODULES")))
