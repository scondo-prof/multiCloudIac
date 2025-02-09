# Running EMR on EKS Fargate

## Process

```
 Directory Structure
 -------------------

|emr-integrations|
                 |
                 |_(configuration_overrides.json)
                 |
                 |_(emr_config.py)
                 |
                 |_(job_driver.json)
                 |
                 |_(start-job-run.sh)
                 |
                 |_(start-job-run.txt)


1. Create a spark script you wish to use in your job.

 1a. Upload the script to an S3 bucket in your account that the execution role has access to.

 1b. Copy the S3 uri of the uploaded script and save it for the entry_point parameter in emr_config.py.


2. Navigate to emr_config.py script

 2a. Set set_spark_run_files() function parameters

 2b. Run the script to automatically set configuration_overrides.json, job_driver.json, start-job-run.sh, start-job-run.txt


3. Run the start-job-run script with cli credentials that have permissions to emr.

 3a. If you are on windows copy the contents and paste it into cmd and run it.

 3b. If you are on linux run the start-job-run.sh bashscript.
```
