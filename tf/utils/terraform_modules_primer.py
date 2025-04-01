import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericGlobalAddress",
            "source_path": "../../gcp/cloudComputeNetwork/genericGlobalAddress",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "globalAddress",
        "new_variable_prefix": "CRLBR53D_GlobalAddress",
        "module_name": "globalAddress",
    },
    {
        "paths": {
            "project_path": "../aws/route53/genericRoute53Record",
            "source_path": "../../aws/route53/genericRoute53Record",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "record",
        "new_variable_prefix": "CRLBR53D_Route53DnsARecord",
        "module_name": "route53DnsARecord",
    },
    {
        "paths": {
            "project_path": "../aws/route53/genericRoute53Record",
            "source_path": "../../aws/route53/genericRoute53Record",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "record",
        "new_variable_prefix": "CRLBR53D_Route53DnsTxtRecord",
        "module_name": "route53DnsTxtRecord",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericManagedSslCertificate",
            "source_path": "../../gcp/cloudComputeNetwork/genericManagedSslCertificate",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "msc",
        "new_variable_prefix": "CRLBR53D_Msc",
        "module_name": "msc",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericGlobalAddress",
            "source_path": "../../gcp/cloudComputeNetwork/genericGlobalAddress",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "globalAddress",
        "new_variable_prefix": "CRLBR53D_GlobalAddress",
        "module_name": "globalAddress",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericRegionNetworkEndpointGroup",
            "source_path": "../../gcp/cloudComputeNetwork/genericRegionNetworkEndpointGroup",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "rneg",
        "new_variable_prefix": "CRLBR53D_Rneg",
        "module_name": "rneg",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericBackendService",
            "source_path": "../../gcp/cloudComputeNetwork/genericBackendService",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "backendService",
        "new_variable_prefix": "CRLBR53D_BackendService",
        "module_name": "backendService",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericUrlMap",
            "source_path": "../../gcp/cloudComputeNetwork/genericUrlMap",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "urlMap",
        "new_variable_prefix": "CRLBR53D_UrlMap",
        "module_name": "urlMap",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericTargetHttpsProxy",
            "source_path": "../../gcp/cloudComputeNetwork/genericTargetHttpsProxy",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "thp",
        "new_variable_prefix": "CRLBR53D_Thp",
        "module_name": "thp",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericGlobalForwardingRule",
            "source_path": "../../gcp/cloudComputeNetwork/genericGlobalForwardingRule",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "gfr",
        "new_variable_prefix": "CRLBR53D_Gfr",
        "module_name": "gfr",
    },
]


print(terraform_modules_primer(modules=modules))
