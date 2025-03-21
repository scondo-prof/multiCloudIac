
    module "codebuildLambdaBuildPolicy" {
  source = "../../aws/iam/genericIamPolicy"
awsRegion = var.awsRegion
iamPolicyDescription = var.CLCC_CodebuildLambdaBuildPolicyDescription
iamPolicyNamePrefix = var.CLCC_CodebuildLambdaBuildPolicyNamePrefix
resourceName = var.resourceName
iamPolicyPath = var.CLCC_CodebuildLambdaBuildPolicyPath
iamPolicyVersion = var.CLCC_CodebuildLambdaBuildPolicyVersion
iamPolicyDocumentStatements = var.CLCC_CodebuildLambdaBuildPolicyDocumentStatements
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
}

#---

    module "codebuildLambdaBuildPolicyAttachment" {
  source = "../../aws/iam/genericIamRolePolicyAttachment"
awsRegion = var.awsRegion
policyAttachmentRoleName = var.CLCC_CodebuildLambdaBuildPolicyAttachmentRoleName
policyAttachmentPolicyArn = var.CLCC_CodebuildLambdaBuildPolicyAttachmentPolicyArn
}

#---
