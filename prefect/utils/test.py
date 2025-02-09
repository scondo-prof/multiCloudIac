from prefect import flow


@flow(log_prints=True, name="hooters-for-real")
def main(flow_params: dict) -> None:
    print("we gonna start now")
    print(8 + 12)
    print("-- math --")
    print(flow_params)
