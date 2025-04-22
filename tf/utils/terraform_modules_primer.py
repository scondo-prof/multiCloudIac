import json


def terraform_modules_primer(modules: list[dict]) -> str:
    modules_string = json.dumps(modules)
    return modules_string


modules = [
    {
        "paths": {
            "project_path": "../aws/cloudfront/genericDistribution",
            "source_path": "../aws/cloudfront/genericDistribution",
            "destination_path": "../projects/_CRP_distributionCachePolicyOrp",
        },
        "previous_variable_prefix": "distribution",
        "new_variable_prefix": "CRP_Distribution",
        "module_name": "distribution",
    },
    {
        "paths": {
            "project_path": "../aws/cloudfront/genericCachePolicy",
            "source_path": "../aws/cloudfront/genericCachePolicy",
            "destination_path": "../projects/_CRP_distributionCachePolicyOrp",
        },
        "previous_variable_prefix": "cachePolicy",
        "new_variable_prefix": "CRP_CachePolicy",
        "module_name": "cachePolicy",
    },
    {
        "paths": {
            "project_path": "../aws/cloudfront/genericOriginRequestPolicy",
            "source_path": "../aws/cloudfront/genericOriginRequestPolicy",
            "destination_path": "../projects/_CRP_distributionCachePolicyOrp",
        },
        "previous_variable_prefix": "orp",
        "new_variable_prefix": "CRP_Orp",
        "module_name": "orp",
    },
    {
        "paths": {
            "project_path": "../aws/cloudfront/genericOriginRequestPolicyDataSource",
            "source_path": "../aws/cloudfront/genericOriginRequestPolicyDataSource",
            "destination_path": "../projects/_CRP_distributionCachePolicyOrp",
        },
        "previous_variable_prefix": "orp",
        "new_variable_prefix": "CRP_OrpDataSource",
        "module_name": "orpDataSource",
    },
]


print(terraform_modules_primer(modules=modules))
