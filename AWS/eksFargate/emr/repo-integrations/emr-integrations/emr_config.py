import json
import boto3
import math
import os


driver = {
    "sparkSubmitJobDriver": {
        "entryPoint": "s3://gm-emr-scripts/main.py",
        "sparkSubmitParameters": "--conf spark.executor.memory=69G --conf spark.executor.cores=16 --conf spark.executor.instances=8 --conf spark.driver.memory=120G --conf spark.driver.cores=16",
    }
}

config = {
    "monitoringConfiguration": {
        "persistentAppUI": "ENABLED",
        "cloudWatchMonitoringConfiguration": {
            "logGroupName": "emr/gm/job",
            "logStreamNamePrefix": "pixel-spark-job",
        },
    }
}


# Log Stream Prefix in the format of all lower case separated by dashes ex. example-log-stream | same format for job_name
def set_spark_run_files(
    s3_bucket: str,
    prefixs: list,
    log_stream_prefix_name: str,
    job_name: str,
    entry_point: str,
):
    instance_num = number_of_instances(s3_bucket=s3_bucket, prefixs=prefixs)

    submit_params = f"--conf spark.executor.memory=8G --conf spark.executor.cores=4 --conf spark.executor.instances={instance_num} --conf spark.driver.memory=16G --conf spark.driver.cores=4"

    config["monitoringConfiguration"]["cloudWatchMonitoringConfiguration"][
        "logStreamNamePrefix"
    ] = log_stream_prefix_name

    driver["sparkSubmitJobDriver"]["sparkSubmitParameters"] = submit_params
    driver["sparkSubmitJobDriver"]["entryPoint"] = entry_point

    if os.path.exists("emr-integrations/job_driver.json"):
        # Remove the file
        os.remove("emr-integrations/job_driver.json")

    if os.path.exists("emr-integrations/configuration_overrides.json"):
        # Remove the file
        os.remove("emr-integrations/configuration_overrides.json")

    with open("emr-integrations/job_driver.json", "w") as poop:
        poop.write(json.dumps(driver))

    poop.close()

    with open("emr-integrations/configuration_overrides.json", "w") as tinkle:
        tinkle.write(json.dumps(config))

    tinkle.close()

    configuration_overrides_path = os.path.abspath(
        "emr-integrations/configuration_overrides.json"
    ).replace("\\", "/")
    job_driver_path = os.path.abspath("emr-integrations/job_driver.json").replace(
        "\\", "/"
    )

    write_bash_script(
        virtual_cluster_id="uyb5ugcqe3i2z1e507pwarg40",
        execution_role_arn="arn:aws:iam::708508995810:role/gmEmrRole",
        job_name=job_name,
        release_label="emr-6.2.0-latest",
        job_driver_path=job_driver_path,
        configuration_overrides_path=configuration_overrides_path,
    )
    write_cmd_script(
        virtual_cluster_id="uyb5ugcqe3i2z1e507pwarg40",
        execution_role_arn="arn:aws:iam::708508995810:role/gmEmrRole",
        job_name=job_name,
        release_label="emr-6.2.0-latest",
        job_driver_path=job_driver_path,
        configuration_overrides_path=configuration_overrides_path,
    )


def number_of_instances(s3_bucket: str, prefixs: list):
    s3_client = boto3.client("s3")
    paginator = s3_client.get_paginator("list_objects_v2")

    total_size_in_bytes = 0  # Initialize total size accumulator
    for prefix in prefixs:
        page_iterator = paginator.paginate(Bucket=s3_bucket, Prefix=prefix)
        for page in page_iterator:
            if "Contents" in page:
                for obj in page["Contents"]:
                    size_in_bytes = obj["Size"]
                    total_size_in_bytes += size_in_bytes

    # Convert total size to MB
    total_size_in_mb = total_size_in_bytes / (1024 * 1024)
    # Convert MB to GB
    total_size_in_gb = total_size_in_mb / 1024

    print(f"Total size in GB: {total_size_in_gb}")

    # Calculate the number of nodes
    number_of_nodes = math.ceil((total_size_in_gb * 5) / 8) + 2

    print(f"Total needed nodes: {number_of_nodes}")
    return number_of_nodes


def write_bash_script(
    virtual_cluster_id,
    execution_role_arn,
    job_name,
    release_label,
    job_driver_path,
    configuration_overrides_path,
):
    bash_script_content = f"""#!/bin/bash

# Define the variables
VIRTUAL_CLUSTER_ID="{virtual_cluster_id}"
EXECUTION_ROLE_ARN="{execution_role_arn}"
JOB_NAME="{job_name}"
RELEASE_LABEL="{release_label}"
JOB_DRIVER="{job_driver_path}"
CONFIGURATION_OVERRIDES="{configuration_overrides_path}"

# Run the AWS EMR Containers job
# job-driver.json targets pyspark script in s3 and the infra requirements(amount of workers and mem capacity)
# configuration_overrides.json log output and ui integration
aws emr-containers start-job-run \\
  --virtual-cluster-id $VIRTUAL_CLUSTER_ID \\
  --execution-role-arn $EXECUTION_ROLE_ARN \\
  --name $JOB_NAME \\
  --release-label $RELEASE_LABEL \\
  --job-driver file://$JOB_DRIVER \\
  --configuration-overrides file://$CONFIGURATION_OVERRIDES
"""
    if os.path.exists("emr-integrations/start-job-run.sh"):
        # Remove the file
        os.remove("emr-integrations/start-job-run.sh")
    with open("emr-integrations/start-job-run.sh", "w") as gurgle:
        gurgle.write(bash_script_content)

    gurgle.close()


def write_cmd_script(
    virtual_cluster_id,
    execution_role_arn,
    job_name,
    release_label,
    job_driver_path,
    configuration_overrides_path,
):
    cmd_script_content = f"""aws emr-containers start-job-run ^
  --virtual-cluster-id {virtual_cluster_id} ^
  --execution-role-arn {execution_role_arn} ^
  --name {job_name} ^
  --release-label {release_label} ^
  --job-driver file://{job_driver_path} ^
  --configuration-overrides file://{configuration_overrides_path}
"""
    if os.path.exists("emr-integrations/start-job-run.txt"):
        # Remove the file
        os.remove("emr-integrations/start-job-run.txt")
    with open("emr-integrations/start-job-run.txt", "w") as fungis:
        fungis.write(cmd_script_content)

    fungis.close()


prefixs = [
    "path/to/data/directory/or/file",
    "path/to/data/directory/or/file",
]

set_spark_run_files(
    s3_bucket="api-ingestion-bucket",
    prefixs=prefixs,
    log_stream_prefix_name="log-stream-prefix-name",
    job_name="emr-job-name",
    entry_point="s3://gm-emr-scripts/main.py",
)
