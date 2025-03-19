import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../gcp/cloudSql/genericCloudSqlDatabaseInstance",
            "source_path": "../genericCloudSqlDatabaseInstance",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "databaseInstance",
        "new_variable_prefix": "CSDIU_DatabaseInstance",
        "module_name": "databaseInstance",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudSql/genericCloudSqlDatabase",
            "source_path": "../genericCloudSqlDatabase",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "database",
        "new_variable_prefix": "CSDIU_Database",
        "module_name": "database",
    },
    {
        "paths": {
            "project_path": "../gcp/cloudSql/genericCloudSqlDatabaseUser",
            "source_path": "../genericCloudSqlDatabaseUser",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "databaseUser",
        "new_variable_prefix": "CSDIU_DatabaseUser",
        "module_name": "databaseUser",
    },
    {
        "paths": {
            "project_path": "../gcp/secretsManager/genericSecret",
            "source_path": "../../secretsManager/genericSecret",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "secret",
        "new_variable_prefix": "CSDIU_Secret",
        "module_name": "secret",
    },
    {
        "paths": {
            "project_path": "../gcp/secretsManager/genericSecretVersion",
            "source_path": "../../secretsManager/genericSecretVersion",
            "destination_path": "./temp/",
        },
        "previous_variable_prefix": "secretVersion",
        "new_variable_prefix": "CSDIU_SecretVersion",
        "module_name": "secretVersion",
    },
]


print(terraform_modules_primer(modules=modules))
