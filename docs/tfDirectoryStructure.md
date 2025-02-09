# Terraform Directory Structure

This directory contains all Terraform configurations organized into subdirectories based on cloud providers, platforms, and use cases. Each subdirectory serves a specific purpose, detailed below.

## Subdirectories

### `aws/`

- Contains **AWS Terraform base modules**.
- For any new AWS resource, a **generic (base) version** of the resource is created.
- Each base module includes **all possible combinations of arguments**, enabling easy import and integration into future modules.

### `azuread/`

- Contains **Azure Active Directory (AzureAD) Terraform base modules**.
- For any new AzureAD resource, a **generic (base) version** of the resource is created.
- Each base module includes **all possible combinations of arguments**, enabling easy import and integration into future modules.

### `azurerm/`

- Contains **Azure Resource Manager (AzureRM) Terraform base modules**.
- For any new AzureRM resource, a **generic (base) version** of the resource is created.
- Each base module includes **all possible combinations of arguments**, enabling easy import and integration into future modules.

### `gcp/`

- Contains **Google Cloud Platform (GCP) Terraform base modules**.
- For any new GCP resource, a **generic (base) version** of the resource is created.
- Each base module includes **all possible combinations of arguments**, enabling easy import and integration into future modules.

### `github/`

- Contains **GitHub Terraform base modules**.
- For any new GitHub resource, a **generic (base) version** of the resource is created.
- Each base module includes **all possible combinations of arguments**, enabling easy import and integration into future modules.

### `prefect/`

- Contains **Prefect Terraform base modules**.
- For any new Prefect resource, a **generic (base) version** of the resource is created.
- Each base module includes **all possible combinations of arguments**, enabling easy import and integration into future modules.

### `snowflake/`

- Contains **Snowflake Terraform base modules**.
- For any new Snowflake resource, a **generic (base) version** of the resource is created.
- Each base module includes **all possible combinations of arguments**, enabling easy import and integration into future modules.

### `projects/`

- Used for **combining base modules**.
- Contains integrations that utilize base modules from one or multiple of the subdirectories above.
- Includes **project modules** that are combined and reused to create **new project modules**, enabling scalable and modular infrastructure design.

### `utils/`

- Contains **utility scripts** to assist in creating Terraform elements.
- Examples include:
  - Validators for variables.
  - Scripts to **auto-aggregate modules** for creating new modules.

---

This structure ensures modularity, scalability, and ease of integration, promoting best practices for managing Terraform configurations in a multi-cloud environment.

---

```
    *   .                  .              .        .   *          .
  .         .                     .       .           .      .        .
        o                             .                   .
         .              .                  .           .
          0     .
                 .          .                 ,                ,    ,
 .          \          .                         .
      .      \   ,
   .          o     .                 .                   .            .
     .         \                 ,             .                .
               #\##\#      .                              .        .
             #  #O##\###                .                        .
   .        #*#  #\##\###                       .                     ,
        .   ##*#  #\##\##               .                     .
      .      ##*#  #o##\#         .                             ,       .
          .     *#  #\#     .                    .             .          ,
                      \          .                         .
____^/\___^--____/\____O______________/\/\---/\___________---______________
   /\^   ^  ^    ^                  ^^ ^  '\ ^          ^       ---
         --           -            --  -      -         ---  __       ^
   --  __                      ___--  ^  ^                         --  __
```
