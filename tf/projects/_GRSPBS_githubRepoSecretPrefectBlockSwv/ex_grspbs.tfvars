prefectApiKey = "<prefect-api-key>"

prefectAccountId = "9759ff6b-6f30-404f-92f3-02c593f6f7aa"

prefectWorkspaceId = "1733fd7b-18ad-4093-a0a1-4f128be45747"

resourceName = "test"

projectName = "test"

deployedDate = "2025-05-16"

tfModule = "grspbs"

GRSPBS_GithubActionsSecretObjects = [{
  secret_name     = "wow"
  plaintext_value = "cool"
  },
  {
    secret_name     = "cool"
    plaintext_value = "wow"
  },
  {
    secret_name     = "bob-joe"
    plaintext_value = "wunnnananan"
}]

GRSPBS_GithubActionsSecretRepository = "multiCloudIac"

GRSPBS_PrefectBlockObjects = [
  {
    data = {
      "value" = "wowowowoaw"
    }
    name      = "wow"
    type_slug = "secret"
  },
  {
    data = {
      "value" = "yeeeee"
    }
    name      = "yeeee"
    type_slug = "secret"
  },
]

GRSPBS_SWV_SecretDescription = "secret for github repository actions secrets and prefect blocks"

GRSPBS_SWV_SecretRecoveryWindowInDays = 0