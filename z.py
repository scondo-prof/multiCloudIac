temp = """
aws-credentials
aws-secret
airbyte-connection
airbyte-server
azure
azure-blob-storage-container
azure-blob-storage-credentials
azure-container-instance-credentials
azure-container-instance-job
azure-cosmos-db-credentials
azureml-credentials
bigquery-warehouse
bitbucket-credentials
bitbucket-repository
census-credentials
census-sync
coiled-credentials
database-credentials
databricks-credentials
date-time
discord-webhook
docker-container
docker-host
docker-registry
docker-registry-credentials
ecs-task
email
email-server-credentials
firebolt-credentials
firebolt-database
cloud-run-job
gcp-credentials
gcs
gcs-bucket
gcpsecret
github
github-credentials
github-repository
gitlab-credentials
gitlab-repository
hex-credentials
hightouch-credentials
json
kubernetes-cluster-config
kubernetes-credentials
kubernetes-job
lambda-function
local-file-system
mattermost-webhook
ms-teams-webhook
minio-credentials
modal-credentials
monday-credentials
monte-carlo-credentials
openai-completion-model
openai-credentials
openai-image-model
opsgenie-webhook
pager-duty-webhook
process
remote-file-system
s3
s3-bucket
smb
sqlalchemy-connector
secret
sendgrid-email
shell-operation
slack-credentials
slack-incoming-webhook
slack-webhook
snowflake-connector
snowflake-credentials
string
twilio-sms
twitter-credentials
vertex-ai-custom-training-job
webhook
dbt-cli-bigquery-target-configs
dbt-cli-global-configs
dbt-cli-postgres-target-configs
dbt-cli-profile
dbt-cli-snowflake-target-configs
dbt-cli-target-configs
dbt-cloud-credentials
"""


temp = temp.split("\n")

fill = ""

for _ in temp:
    fill = f"{fill} {temp},"

print(fill)
