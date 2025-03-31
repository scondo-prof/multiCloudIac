
module "cloudRunLogsAlertPolicy" {
  source                          = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"
  gcpProjectId                    = var.gcpProjectId
  gcpRegion                       = var.gcpRegion
  resourceName                    = var.resourceName
  alertPolicyCombiner             = var.CRDPFG_CloudRunLogsAlertPolicyCombiner
  alertPolicyConditions           = var.CRDPFG_CloudRunLogsAlertPolicyConditions
  alertPolicyEnabled              = var.CRDPFG_CloudRunLogsAlertPolicyEnabled
  alertPolicyNotificationChannels = var.CRDPFG_CloudRunLogsAlertPolicyNotificationChannels
  alertPolicyAlertStrategy        = var.CRDPFG_CloudRunLogsAlertPolicyAlertStrategy
  projectName                     = var.projectName
  deployedDate                    = var.deployedDate
  createdBy                       = var.createdBy
  tfModule                        = var.tfModule
  additionalTags                  = var.additionalTags
  alertPolicySeverity             = var.CRDPFG_CloudRunLogsAlertPolicySeverity
  alertPolicyDocumentation        = var.CRDPFG_CloudRunLogsAlertPolicyDocumentation
}

#---
