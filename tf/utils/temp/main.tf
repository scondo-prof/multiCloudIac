
module "key_pair" {
  source               = "../../aws/ec2/generic_key_pair"
  create_key_pair      = var.create_key_pair
  private_key_object   = var.private_key_object
  key_pair_object      = var.key_pair_object
  resource_name        = var.resource_name
  project_name         = var.project_name
  created_by           = var.created_by
  terraform_repository = var.terraform_repository
  environment          = var.environment
  tags                 = var.tags
}

#---

module "sg" {
  source               = "../../aws/ec2/generic_security_group"
  create_sg            = var.create_sg
  sg_object            = var.sg_object
  resource_name        = var.resource_name
  project_name         = var.project_name
  created_by           = var.created_by
  terraform_repository = var.terraform_repository
  environment          = var.environment
  tags                 = var.tags
}

#---

module "role" {
  source               = "../../aws/iam/generic_role"
  create_role          = var.create_role
  role_object          = var.role_object
  resource_name        = var.resource_name
  project_name         = var.project_name
  created_by           = var.created_by
  terraform_repository = var.terraform_repository
  environment          = var.environment
  tags                 = var.tags
}

#---

module "policy" {
  source               = "../../aws/iam/generic_policy"
  create_policy        = var.create_policy
  policy_object        = var.policy_object
  resource_name        = var.resource_name
  project_name         = var.project_name
  created_by           = var.created_by
  terraform_repository = var.terraform_repository
  environment          = var.environment
  tags                 = var.tags
}

#---

module "pa" {
  source        = "../../aws/iam/generic_iam_policy_attachment"
  create_pa     = var.create_pa
  resource_name = var.resource_name
  pa_objects    = var.pa_objects
}

#---

module "instance" {
  source               = "../../aws/ec2/generic_instance"
  instance_object      = var.instance_object
  project_name         = var.project_name
  created_by           = var.created_by
  terraform_repository = var.terraform_repository
  environment          = var.environment
  tags                 = var.tags
  resource_name        = var.resource_name
}

#---

module "secret" {
  source               = "../../aws/secretsmanager/generic_secret"
  create_secret        = var.create_secret
  secret_object        = var.secret_object
  resource_name        = var.resource_name
  project_name         = var.project_name
  created_by           = var.created_by
  terraform_repository = var.terraform_repository
  environment          = var.environment
  tags                 = var.tags
}

#---

module "secret_version" {
  source                = "../../aws/secretsmanager/generic_secret_version"
  create_secret_version = var.create_secret_version
  secret_version_object = var.secret_version_object
}

#---
