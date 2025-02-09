provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}

module "serviceAccount" {
  source = "../genericServiceAccount"

  projectId                               = var.projectId
  gcpRegion                               = var.gcpRegion
  resourceName                            = var.resourceName
  serviceAccountAccountId                 = var.serviceAccountAccountId
  serviceAccountDisabled                  = var.serviceAccountDisabled
  serviceAccountCreateIgnoreAlreadyExists = var.serviceAccountCreateIgnoreAlreadyExists
}

module "role" {
  source = "../genericGoogleProjectIamRole"

  roleId          = var.roleId
  projectId       = var.projectId
  gcpRegion       = var.gcpRegion
  resourceName    = var.resourceName
  rolePermissions = ["appengine.versions.delete", "appengine.versions.get", "appengine.versions.list", "appengine.versions.update", "artifactregistry.aptartifacts.create", "artifactregistry.dockerimages.get", "artifactregistry.dockerimages.list", "artifactregistry.files.download", "artifactregistry.files.get", "artifactregistry.files.list", "artifactregistry.kfpartifacts.create", "artifactregistry.locations.get", "artifactregistry.locations.list", "artifactregistry.mavenartifacts.get", "artifactregistry.mavenartifacts.list", "artifactregistry.npmpackages.get", "artifactregistry.npmpackages.list", "artifactregistry.packages.get", "artifactregistry.packages.list", "artifactregistry.projectsettings.get", "artifactregistry.pythonpackages.get", "artifactregistry.pythonpackages.list", "artifactregistry.repositories.downloadArtifacts", "artifactregistry.repositories.get", "artifactregistry.repositories.list", "artifactregistry.repositories.listEffectiveTags", "artifactregistry.repositories.listTagBindings", "artifactregistry.repositories.readViaVirtualRepository", "artifactregistry.repositories.uploadArtifacts", "artifactregistry.tags.create", "artifactregistry.tags.get", "artifactregistry.tags.list", "artifactregistry.tags.update", "artifactregistry.versions.get", "artifactregistry.versions.list", "artifactregistry.yumartifacts.create", "datastore.databases.get", "datastore.entities.create", "datastore.entities.delete", "datastore.entities.get", "datastore.entities.list", "datastore.entities.update", "datastore.indexes.list", "datastore.namespaces.get", "datastore.namespaces.list", "datastore.statistics.get", "datastore.statistics.list", "iam.serviceAccounts.getAccessToken", "iam.serviceAccounts.getOpenIdToken", "iam.serviceAccounts.signBlob", "serviceusage.services.enable", "serviceusage.services.get", "storage.buckets.create", "storage.buckets.get", "artifactregistry.files.update", "artifactregistry.packages.update", "artifactregistry.repositories.createOnPush", "artifactregistry.repositories.deleteArtifacts", "binaryauthorization.attestors.create", "binaryauthorization.attestors.delete", "binaryauthorization.attestors.get", "binaryauthorization.attestors.list", "binaryauthorization.attestors.update", "binaryauthorization.attestors.verifyImageAttested", "cloudbuild.builds.create", "cloudbuild.builds.get", "cloudbuild.builds.list", "cloudbuild.builds.update", "cloudbuild.connections.get", "cloudbuild.operations.get", "cloudbuild.operations.list", "cloudbuild.repositories.accessReadToken", "cloudbuild.repositories.accessReadWriteToken", "cloudbuild.repositories.get", "cloudbuild.repositories.list", "cloudbuild.workerpools.use", "compute.firewalls.get", "compute.firewalls.list", "compute.networkAttachments.get", "compute.networkAttachments.update", "compute.networks.get", "compute.regionOperations.get", "compute.subnetworks.get", "containeranalysis.notes.attachOccurrence", "containeranalysis.notes.create", "containeranalysis.notes.delete", "containeranalysis.notes.get", "containeranalysis.notes.list", "containeranalysis.notes.update", "containeranalysis.occurrences.create", "containeranalysis.occurrences.delete", "containeranalysis.occurrences.get", "containeranalysis.occurrences.list", "containeranalysis.occurrences.update", "iam.serviceAccounts.get", "logging.buckets.create", "logging.buckets.get", "logging.buckets.list", "logging.logEntries.create", "logging.logEntries.list", "logging.views.access", "pubsub.subscriptions.create", "pubsub.subscriptions.delete", "pubsub.subscriptions.get", "pubsub.subscriptions.update", "pubsub.topics.attachSubscription", "pubsub.topics.create", "pubsub.topics.get", "pubsub.topics.publish", "remotebuildexecution.blobs.get", "resourcemanager.projects.get", "servicedirectory.endpoints.get", "servicedirectory.endpoints.getIamPolicy", "servicedirectory.endpoints.list", "servicedirectory.locations.get", "servicedirectory.locations.list", "servicedirectory.namespaces.get", "servicedirectory.namespaces.getIamPolicy", "servicedirectory.namespaces.list", "servicedirectory.networks.access", "servicedirectory.services.get", "servicedirectory.services.getIamPolicy", "servicedirectory.services.list", "servicedirectory.services.resolve", "serviceusage.services.use", "source.repos.get", "source.repos.list", "storage.buckets.list", "storage.objects.create", "storage.objects.delete", "storage.objects.get", "storage.objects.list", "storage.objects.update", "clouddeploy.config.get", "cloudasset.assets.listCloudkmsCryptoKeys", "recommender.locations.get", "recommender.locations.list", "recommender.runServiceCostInsights.get", "recommender.runServiceCostInsights.list", "recommender.runServiceCostInsights.update", "recommender.runServiceCostRecommendations.get", "recommender.runServiceCostRecommendations.list", "recommender.runServiceCostRecommendations.update", "recommender.runServiceIdentityInsights.get", "recommender.runServiceIdentityInsights.list", "recommender.runServiceIdentityInsights.update", "recommender.runServiceIdentityRecommendations.get", "recommender.runServiceIdentityRecommendations.list", "recommender.runServiceIdentityRecommendations.update", "recommender.runServicePerformanceInsights.get", "recommender.runServicePerformanceInsights.list", "recommender.runServicePerformanceInsights.update", "recommender.runServicePerformanceRecommendations.get", "recommender.runServicePerformanceRecommendations.list", "recommender.runServicePerformanceRecommendations.update", "recommender.runServiceSecurityInsights.get", "recommender.runServiceSecurityInsights.list", "recommender.runServiceSecurityInsights.update", "recommender.runServiceSecurityRecommendations.get", "recommender.runServiceSecurityRecommendations.list", "recommender.runServiceSecurityRecommendations.update", "run.configurations.get", "run.configurations.list", "run.executions.cancel", "run.executions.delete", "run.executions.get", "run.executions.list", "run.jobs.create", "run.jobs.delete", "run.jobs.get", "run.jobs.getIamPolicy", "run.jobs.list", "run.jobs.listEffectiveTags", "run.jobs.listTagBindings", "run.jobs.run", "run.jobs.runWithOverrides", "run.jobs.update", "run.locations.list", "run.operations.delete", "run.operations.get", "run.operations.list", "run.revisions.delete", "run.revisions.get", "run.revisions.list", "run.routes.get", "run.routes.invoke", "run.routes.list", "run.services.create", "run.services.delete", "run.services.get", "run.services.getIamPolicy", "run.services.list", "run.services.listEffectiveTags", "run.services.listTagBindings", "run.services.update", "run.tasks.get", "run.tasks.list", "binaryauthorization.platformPolicies.evaluatePolicy", "binaryauthorization.policy.evaluatePolicy", "clientauthconfig.clients.list", "compute.addresses.createInternal", "compute.addresses.deleteInternal", "compute.addresses.get", "compute.addresses.list", "compute.globalOperations.get", "compute.networks.access", "compute.subnetworks.use", "iam.serviceAccounts.actAs", "networkservices.meshes.get", "resourcemanager.projects.getIamPolicy", "storage.managedFolders.get", "storage.managedFolders.list", "vpcaccess.connectors.get", "vpcaccess.connectors.use", "logging.logEntries.route", "secretmanager.versions.access", "secretmanager.locations.get", "secretmanager.locations.list", "secretmanager.secrets.get", "secretmanager.secrets.getIamPolicy", "secretmanager.secrets.list", "secretmanager.secrets.listEffectiveTags", "secretmanager.secrets.listTagBindings", "secretmanager.versions.get", "secretmanager.versions.list", "storage.objects.get", "storage.objects.list", "storage.objects.create", "storage.objects.delete"]
  roleStage       = var.roleStage
}

module "iamBinding" {
  source = "../genericProjectIamBinding"

  projectId         = var.projectId
  iamBindingRole    = "projects/${var.projectId}/roles/${module.role.roleRoleId}"
  iamBindingMembers = ["serviceAccount:${module.serviceAccount.serviceAccountEmail}"]
}