from test import main

# aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 706764432989.dkr.ecr.us-east-1.amazonaws.com
main.deploy(  # type: ignore
    name=f"hooters-test-deployment",
    work_pool_name="temp-pool",
    image="706764432989.dkr.ecr.us-east-1.amazonaws.com/hipa-prefect:hooters",
    tags=["dev"],
    cron="0 11 * * *",
)
