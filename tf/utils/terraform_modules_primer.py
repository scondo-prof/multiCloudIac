import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/ec2/genericKeyPair",
            "source_path": "../../aws/ec2/genericKeyPair",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "keyPair",
        "new_variable_prefix": "KPTPKWS_Ec2KeyPair",
        "module_name": "Ec2KeyPair",
    },
    {
        "paths": {
            "project_path": "../tls/genericTlsPrivateKey",
            "source_path": "../../tls/genericTlsPrivateKey",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "privateKey",
        "new_variable_prefix": "KPTPKWS_Ec2PrivateKey",
        "module_name": "ec2PrivateKey",
    },
    {
        "paths": {
            "project_path": "../aws/secretsmanager/_SWV_secretWithVersion",
            "source_path": "../../aws/secretsmanager/_SWV_secretWithVersion",
            "destination_path": "./temp",
        },
        "previous_variable_prefix": "SWV",
        "new_variable_prefix": "KPTPKWS_SWV",
        "module_name": "SWV",
    },
]


print(terraform_modules_primer(modules=modules))
