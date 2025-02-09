variable "prefectAccountId" {
  type    = string
  default = "9759ff6b-6f30-404f-92f3-02c593f6f7aa"
}

variable "prefectWorkspaceId" {
  type    = string
  default = "1733fd7b-18ad-4093-a0a1-4f128be45747"
}

variable "prefectApiKey" {
  type      = string
  sensitive = true
}

#Dependent on prefectBlockTypeSlug, use "prefect block type inspect <slug>" to see the required format
variable "prefectBlockData" {
  type = map(string)
}

variable "resourceName" {
  type = string
}

variable "prefectBlockTypeSlug" {
  type = string
  validation {
    condition     = contains(["aws-credentials", "aws-secret", "azure", "azure-blob-storage-container", "azure-blob-storage-credentials", "azure-container-instance-credentials", "azure-container-instance-job", "azure-cosmos-db-credentials", "azureml-credentials", "bigquery-warehouse", "bitbucket-credentials", "bitbucket-repository", "database-credentials", "databricks-credentials", "date-time", "discord-webhook", "docker-container", "docker-host", "docker-registry", "docker-registry-credentials", "ecs-task", "email", "email-server-credentials", "cloud-run-job", "gcp-credentials", "gcs", "gcs-bucket", "gcpsecret", "github", "github-credentials", "github-repository", "gitlab-credentials", "gitlab-repository", "json", "kubernetes-cluster-config", "kubernetes-credentials", "kubernetes-job", "lambda-function", "local-file-system", "mattermost-webhook", "ms-teams-webhook", "minio-credentials", "modal-credentials", "opsgenie-webhook", "pager-duty-webhook", "process", "remote-file-system", "s3", "s3-bucket", "smb", "sqlalchemy-connector", "secret", "sendgrid-email", "shell-operation", "slack-credentials", "slack-webhook", "snowflake-connector", "snowflake-credentials", "string", "twilio-sms", "vertex-ai-custom-training-job", "webhook", "dbt-cli-bigquery-target-configs", "dbt-cli-global-configs", "dbt-cli-postgres-target-configs", "dbt-cli-profile", "dbt-cli-snowflake-target-configs", "dbt-cli-target-configs", "dbt-cloud-credentials", "dbt-core-operation"], var.prefectBlockTypeSlug)
    error_message = "Variable prefectBlockTypeSlug must be one of the following values: : aws-credentials, aws-secret, azure, azure-blob-storage-container, azure-blob-storage-credentials, azure-container-instance-credentials, azure-container-instance-job, azure-cosmos-db-credentials, azureml-credentials, bigquery-warehouse, bitbucket-credentials, bitbucket-repository, database-credentials, databricks-credentials, date-time, discord-webhook, docker-container, docker-host, docker-registry, docker-registry-credentials, ecs-task, email, email-server-credentials, cloud-run-job, gcp-credentials, gcs, gcs-bucket, gcpsecret, github, github-credentials, github-repository, gitlab-credentials, gitlab-repository, json, kubernetes-cluster-config, kubernetes-credentials, kubernetes-job, lambda-function, local-file-system, mattermost-webhook, ms-teams-webhook, minio-credentials, modal-credentials, opsgenie-webhook, pager-duty-webhook, process, remote-file-system, s3, s3-bucket, smb, sqlalchemy-connector, secret, sendgrid-email, shell-operation, slack-credentials, slack-webhook, snowflake-connector, snowflake-credentials, string, twilio-sms, vertex-ai-custom-training-job, webhook, dbt-cli-bigquery-target-configs, dbt-cli-global-configs, dbt-cli-postgres-target-configs, dbt-cli-profile, dbt-cli-snowflake-target-configs, dbt-cli-target-configs, dbt-cloud-credentials, dbt-core-operation"
  }
}