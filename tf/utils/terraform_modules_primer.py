import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/vpc/genericVpc",
            "source_path": "../../aws/vpc/genericVpc",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "vpc",
        "new_variable_prefix": "VFSI_Vpc",
        "module_name": "vpc",
    },
    {
        "paths": {
            "project_path": "../aws/vpc/genericSubnet",
            "source_path": "../../aws/vpc/genericSubnet",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "subnet",
        "new_variable_prefix": "VFSI_Subnet",
        "module_name": "subnet",
    },
    {
        "paths": {
            "project_path": "../aws/vpc/genericRouteTable",
            "source_path": "../../aws/vpc/genericRouteTable",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "routeTable",
        "new_variable_prefix": "VFSI_RouteTable",
        "module_name": "routeTable",
    },
    {
        "paths": {
            "project_path": "../aws/vpc/genericRouteTableAssociation",
            "source_path": "../../aws/vpc/genericRouteTableAssociation",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "routeTableAssociation",
        "new_variable_prefix": "VFSI_RouteTableAssociation",
        "module_name": "routeTableAssociation",
    },
    {
        "paths": {
            "project_path": "../aws/vpc/genericInternetGateway",
            "source_path": "../../aws/vpc/genericInternetGateway",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "ig",
        "new_variable_prefix": "VFSI_Ig",
        "module_name": "Ig",
    },
    {
        "paths": {
            "project_path": "../aws/vpc/genericFlowLog",
            "source_path": "../../aws/vpc/genericFlowLog",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "flowLog",
        "new_variable_prefix": "VFSI_FlowLog",
        "module_name": "flowLog",
    },
]


print(terraform_modules_primer(modules=modules))
