import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/_NWSAF_networkWithSubnetworkAndFirewall",
            "source_path": "../_NWSAF_networkWithSubnetworkAndFirewall",
            "destination_path": "../gcp/cloudComputeNetwork/_NWEIPN_networkWithExternalIpNat",
        },
        "previous_variable_prefix": "NWSAF_",
        "new_variable_prefix": "NWEIPN_NWSAF_",
        "module_name": "NWSAF",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/_NWEA_natWithExternalAddress",
            "source_path": "../_NWEA_natWithExternalAddress",
            "destination_path": "../gcp/cloudComputeNetwork/_NWEIPN_networkWithExternalIpNat",
        },
        "previous_variable_prefix": "NWEA_",
        "new_variable_prefix": "NWEIPN_NWEA_",
        "module_name": "NWEA",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudComputeNetwork/genericVpcAccessConnector",
            "source_path": "../genericVpcAccessConnector",
            "destination_path": "../gcp/cloudComputeNetwork/_NWEIPN_networkWithExternalIpNat",
        },
        "previous_variable_prefix": "vpcAccessConnector",
        "new_variable_prefix": "NWEIPN_VpcAccessConnector",
        "module_name": "vpcAccessConnector",
    },
]


print(terraform_modules_primer(modules=modules))
