from prefect.blocks.system import Secret



def test_block_creation(block_name: str) -> None:
    secret_block = Secret.load(block_name)

    # Access the stored secret
    print(secret_block.get())

test_block_creation(block_name="saliva-runoff-prefect-block")