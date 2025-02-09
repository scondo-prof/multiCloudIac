#!/bin/bash

# Define the variables
VIRTUAL_CLUSTER_ID="uyb5ugcqe3i2z1e507pwarg40"
EXECUTION_ROLE_ARN="arn:aws:iam::708508995810:role/gmEmrRole"
JOB_NAME="childrens-tears-are-delicious"
RELEASE_LABEL="emr-6.2.0-latest"
JOB_DRIVER="C:/Users/Scott/Documents/GitHub/etl/geniusMonkey-etl/emr-integrations/job_driver.json"
CONFIGURATION_OVERRIDES="C:/Users/Scott/Documents/GitHub/etl/geniusMonkey-etl/emr-integrations/configuration_overrides.json"

# Run the AWS EMR Containers job
# job-driver.json targets pyspark script in s3 and the infra requirements(amount of workers and mem capacity)
# configuration_overrides.json log output and ui integration
aws emr-containers start-job-run \
  --virtual-cluster-id $VIRTUAL_CLUSTER_ID \
  --execution-role-arn $EXECUTION_ROLE_ARN \
  --name $JOB_NAME \
  --release-label $RELEASE_LABEL \
  --job-driver file://$JOB_DRIVER \
  --configuration-overrides file://$CONFIGURATION_OVERRIDES