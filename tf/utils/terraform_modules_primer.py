import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../projects/_VFSI_vpcFlowlogSubnetIg",
            "source_path": "../_VFSI_vpcFlowlogSubnetIg",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "VFSI",
        "new_variable_prefix": "VEN_VFSI",
        "module_name": "VFSI",
    },
    {
        "paths": {
            "project_path": "../aws/ec2/genericEip",
            "source_path": "../../aws/ec2/genericEip",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "eip",
        "new_variable_prefix": "VEN_EipNat",
        "module_name": "eipNat",
    },
    {
        "paths": {
            "project_path": "../aws/vpc/genericNatGateway",
            "source_path": "../../aws/vpc/genericNatGateway",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "nat",
        "new_variable_prefix": "VEN_Nat",
        "module_name": "nat",
    },
]


print(terraform_modules_primer(modules=modules))
