#to get the list type "prefect block type ls" in console where prefect is installed via pip
#paste the contents of the respone into a text file, and use that text file for the function
def list_prefect_block_type_slugs(path_to_txt_file:str) -> list[str]:
    block_types = []

    with open(path_to_txt_file, "r") as poop:
        for line in poop:
            line = line.split("â”")
            block_type = line[1].replace("‚ ", "")
            block_type = block_type.strip()
            if not block_type == "Block Type Slug" and not block_type == "" and not block_type == "œ":
                block_types.append(block_type)
    return block_types

def prefect_block_type_slugs_string_for_error_message() -> str:
    block_types = list_prefect_block_type_slugs("tf\\prefect\\blocks\\genericBlock\\utils\\no.txt")
    error_message_string = ":"
    for block_type in block_types:
        error_message_string += f" {block_type},"
    print(error_message_string)

prefect_block_type_slugs_string_for_error_message()