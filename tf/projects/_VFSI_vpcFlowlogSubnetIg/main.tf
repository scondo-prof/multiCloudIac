
module "vpc" {
  source                              = "../../aws/vpc/genericVpc"
  awsRegion                           = var.awsRegion
  vpcCidrBlock                        = var.VFSI_VpcCidrBlock
  vpcInstanceTenancy                  = var.VFSI_VpcInstanceTenancy
  vpcIpv4IpamPoolId                   = var.VFSI_VpcIpv4IpamPoolId
  vpcIpv4NetmaskLength                = var.VFSI_VpcIpv4NetmaskLength
  vpcIpv6CidrBlock                    = var.VFSI_VpcIpv6CidrBlock
  vpcIpv6IpamPoolId                   = var.VFSI_VpcIpv6IpamPoolId
  vpcIpv6NetmaskLength                = var.VFSI_VpcIpv6NetmaskLength
  vpcIpv6CidrBlockNetworkBorderGroup  = var.VFSI_VpcIpv6CidrBlockNetworkBorderGroup
  vpcEnableDnsSupport                 = var.VFSI_VpcEnableDnsSupport
  vpcEnableNetworkAddressUsageMetrics = var.VFSI_VpcEnableNetworkAddressUsageMetrics
  vpcEnableDnsHostnames               = var.VFSI_VpcEnableDnsHostnames
  vpcAssignGeneratedIpv6CidrBlock     = var.VFSI_VpcAssignGeneratedIpv6CidrBlock
  projectName                         = var.projectName
  createdBy                           = var.createdBy
  deployedDate                        = var.deployedDate
  tfModule                            = var.tfModule
  resourceName                        = var.resourceName
  additionalTags                      = var.additionalTags
}

#---

module "subnet" {
  source    = "../../aws/vpc/genericSubnet"
  awsRegion = var.awsRegion
  subnetObjects = [
    {
      name = "${var.resourceName}-public-1"
    },
    {
      name = "${var.resourceName}-private-1"
      map_customer_owned_ip_on_launch = false
    },
  ]
  subnetVpcId    = module.vpc.vpcId
  projectName    = var.projectName
  createdBy      = var.createdBy
  deployedDate   = var.deployedDate
  tfModule       = var.tfModule
  additionalTags = var.additionalTags
}

#---

module "routeTable" {
  source    = "../../aws/vpc/genericRouteTable"
  awsRegion = var.awsRegion
  routeTableObjects = concat([{
    name = "${var.resourceName}-public"

    route = concat([
      {
        cidr_block = "0.0.0.0/0"
        gateway_id = module.Ig.igId
      },
      {
        cidr_block = module.vpc.vpcCidrBlock
        gateway_id = "local"
      }
    ], var.VFSI_RouteTablePublicRoutes)
    },
    {
      name = "${var.resourceName}-private"

      route = concat([
        {
          cidr_block = module.vpc.vpcCidrBlock
          gateway_id = "local"
        }
      ], var.VFSI_RouteTablePrivateRoutes)
    }
  ], var.VFSI_RouteTableObjects)

  routeTableVpcId = module.vpc.vpcId
  projectName     = var.projectName
  createdBy       = var.createdBy
  deployedDate    = var.deployedDate
  tfModule        = var.tfModule
  additionalTags  = var.additionalTags
}

#---

module "routeTableAssociation" {
  source    = "../../aws/vpc/genericRouteTableAssociation"
  awsRegion = var.awsRegion
  routeTableAssociationObjects = concat([
    {
      subnet_id      = module.subnet.subnetId
      route_table_id = module.routeTable.routeTableId
    }
  ], var.VFSI_RouteTableAssociationObjects)
}

#---

module "Ig" {
  source         = "../../aws/vpc/genericInternetGateway"
  awsRegion      = var.awsRegion
  igVpcId        = module.vpc.vpcId
  projectName    = var.projectName
  createdBy      = var.createdBy
  deployedDate   = var.deployedDate
  tfModule       = var.tfModule
  additionalTags = var.additionalTags
}

#---

module "logGroupFlowLogs" {
  source                  = "../../aws/cloudwatch/genericLogGroup"
  awsRegion               = var.awsRegion
  resourceName            = "${var.resourceName}-flow-logs"
  logGroupNamePrefix      = var.VFSI_LogGroupFlowLogsNamePrefix
  logGroupSkipDestroy     = var.VFSI_LogGroupFlowLogsSkipDestroy
  logGroupClass           = var.VFSI_LogGroupFlowLogsClass
  logGroupRetentionInDays = var.VFSI_LogGroupFlowLogsRetentionInDays
  logGroupKmsKeyId        = var.VFSI_LogGroupFlowLogsKmsKeyId
  projectName             = var.projectName
  createdBy               = var.createdBy
  deployedDate            = var.deployedDate
  tfModule                = var.tfModule
  additionalTags          = var.additionalTags
}

#---

module "RWP" {
  source                             = "../../aws/iam/_RWP_roleWithPolicy"
  awsRegion                          = var.awsRegion
  RWP_IamRoleAssumeRolePolicyVersion = var.VFSI_RWP_IamRoleAssumeRolePolicyVersion
  RWP_IamRoleAssumeRolePolicy        = var.VFSI_RWP_IamRoleAssumeRolePolicy
  RWP_IamRoleDescription             = var.VFSI_RWP_IamRoleDescription
  RWP_IamRoleForceDetatchPolicies    = var.VFSI_RWP_IamRoleForceDetatchPolicies
  RWP_IamRoleMaxSessionDuration      = var.VFSI_RWP_IamRoleMaxSessionDuration
  resourceName                       = var.resourceName
  RWP_IamRoleNamePrefix              = var.VFSI_RWP_IamRoleNamePrefix
  RWP_IamRolePath                    = var.VFSI_RWP_IamRolePath
  RWP_IamRolePermissionsBoundary     = var.VFSI_RWP_IamRolePermissionsBoundary
  projectName                        = var.projectName
  createdBy                          = var.createdBy
  deployedDate                       = var.deployedDate
  tfModule                           = var.tfModule
  additionalTags                     = var.additionalTags
  RWP_IamPolicyDescription           = var.VFSI_RWP_IamPolicyDescription
  RWP_IamPolicyNamePrefix            = var.VFSI_RWP_IamPolicyNamePrefix
  RWP_IamPolicyPath                  = var.VFSI_RWP_IamPolicyPath
  RWP_IamPolicyVersion               = var.VFSI_RWP_IamPolicyVersion
  RWP_IamPolicyDocumentStatements = concat([
    {
      "Sid" : "AllowWriteToSpecificLogGroup",
      "Effect" : "Allow",
      "Action" : [
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogStreams"
      ],
      "Resource" : module.logGroupFlowLogs.logGroupArn
    },
    {
      "Sid" : "AllowDescribeLogGroups",
      "Effect" : "Allow",
      "Action" : "logs:DescribeLogGroups",
      "Resource" : "*"
    },
    {
      "Sid" : "AllowVpcFlowLogCreate",
      "Effect" : "Allow",
      "Action" : [
        "ec2:CreateFlowLogs",
        "ec2:DescribeFlowLogs",
        "ec2:DescribeVpcs",
        "ec2:DescribeSubnets",
        "ec2:DescribeNetworkInterfaces"
      ],
      "Resource" : "*"
    },
    {
      "Sid" : "AllowIAMPassRoleForFlowLogs",
      "Effect" : "Allow",
      "Action" : "iam:PassRole",
      "Resource" : module.RWP.RWP_IamRoleArn # may have to modify this
    }
  ], var.VFSI_RWP_IamPolicyDocumentStatements)
}

#---

module "flowLog" {
  source                             = "../../aws/vpc/genericFlowLog"
  awsRegion                          = var.awsRegion
  flowLogTrafficType                 = var.VFSI_FlowLogTrafficType
  flowLogdeliverCrossAccountRole     = var.VFSI_FlowLogdeliverCrossAccountRole
  flowLogEniId                       = var.VFSI_FlowLogEniId
  flowLogIamRoleArn                  = var.VFSI_FlowLogIamRoleArn
  flowLogDestinationType             = "cloud-watch-logs"
  flowLogDestination                 = module.logGroupFlowLogs.logGroupArn
  flowLogSubnetId                    = var.VFSI_FlowLogSubnetId
  flowLogtransitGatewayId            = var.VFSI_FlowLogtransitGatewayId
  flowLogTransitGatewayAttatchmentId = var.VFSI_FlowLogTransitGatewayAttatchmentId
  flowLogVpcId                       = module.vpc.vpcId
  flowLogLogFormat                   = var.VFSI_FlowLogLogFormat
  flowLogMaxAggregationInterval      = var.VFSI_FlowLogMaxAggregationInterval
  flowLogDestinationOptions          = var.VFSI_FlowLogDestinationOptions
  projectName                        = var.projectName
  createdBy                          = var.createdBy
  deployedDate                       = var.deployedDate
  tfModule                           = var.tfModule
  additionalTags                     = var.additionalTags
}