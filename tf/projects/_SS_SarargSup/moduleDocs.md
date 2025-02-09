# Terraform Module: SS

## Overview

The **\_SS_SarargSup** Terraform module is designed to streamline the creation of **Snowflake users with custom roles and grants** while ensuring **secure key-pair encryption**. This module adheres to the **Principle of Least Privilege (POLP)** by allowing granular role and grant assignments. It is an excellent tool for **Database Administrators (DBAs) managing Snowflake environments**, enabling them to create and manage users and roles securely and efficiently.

---

## Module Composition

This module **combines two Terraform submodules** to provide a seamless approach to user and role management in Snowflake:

### **1. \_SARARG_snowflakeAccountRoleAccountRoleGrants**

- This submodule is responsible for:
  - **Creating an Account Role** in Snowflake.
  - Dynamically generating a **customizable number of grant objects**, ensuring that the assigned role has the appropriate permissions.

### **2. \_SUP_snowflakeUserPks**

- This submodule is responsible for:
  - **Creating a Snowflake User.**
  - **Generating a Private Key** using the **TLS provider**.
  - **Storing the Private Key securely** in **AWS Secrets Manager** with a managed Secret Version.
  - Storing key data, including:
    - `private_key_open_ssh`
    - `private_key_pem`
    - `private_key_pem_pkcs8`
    - `private_key_public_key_fingerprint_md5`
    - `private_key_public_key_fingerprint_sha256`
    - `private_key_public_key_open_ssh`
    - `private_key_p8` (generated post-creation using **OpenSSL** to convert `private_key_pem_pkcs8` into an encrypted p8 format)
    - `private_key_p8_passphrase` (generated using Terraform's `random_password` resource from the **random provider**)
    - `public_key_pem`

---

## Key Benefits

### 🔒 **Enhanced Security with Least Privilege Access**

- This module simplifies the creation of **custom Snowflake users** with scoped permissions, ensuring that **users have access only to what they need**.
- Private keys are generated and securely stored in **AWS Secrets Manager**, reducing exposure to sensitive credentials.

### ⚙️ **Automated Role and Grant Management**

- The module dynamically provisions **roles and grants**, making it easy for DBAs to define and enforce access policies in Snowflake.
- Ideal for organizations that require **strict security controls and role-based access management**.

### 🛠️ **Effortless Integration and Management**

- A **must-have tool for Snowflake DBAs**, allowing quick and consistent user and role provisioning.
- Reduces **manual intervention** by automating key generation, role assignments, and secure storage.

### 🔑 **Secure Key Pair Encryption**

- Uses **OpenSSL encryption** to generate an **encrypted P8 key** post-creation, ensuring that private keys remain protected.
- Automatically manages **passphrase generation** and key encryption, eliminating the need for manual key handling.

---

## Use Case: Snowflake DBA Toolkit

- **DBAs can leverage this module** to:
  - Create **least-privilege Snowflake users** with dedicated account roles.
  - Dynamically assign required grants without unnecessary permissions.
  - Store private keys securely while allowing seamless authentication via AWS Secrets Manager.
  - Automate **Snowflake user management** in a scalable and repeatable manner.

---

## Conclusion

The **\_SS_SarargSup** module provides a **secure, automated, and efficient** approach to creating Snowflake users with **custom roles, grants, and encrypted key-pair authentication**. By integrating **dynamic role and grant management** with **AWS Secrets Manager for key security**, this module is an essential tool for **DBAs looking to implement robust security and automation in Snowflake**.
