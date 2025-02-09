# Terraform Module: SIBS

This Terraform module is a combination of several other Terraform modules, designed to provide a secure and efficient data staging area as well as support for a containerized application. It ensures the secure management and rotation of user credentials via AWS Secrets Manager. Below is an overview of the integrated modules and the purpose of this module.

---

## Integrated Terraform Modules

### **1. SPCRDFG Module**

- Used for creating a **staging/production deployment** of a Cloud Run application.
- Includes **Cloud Build** as a CI/CD tool:
  - Builds the **production app** when there is a push to the `main` branch.
  - Builds the **staging app** when a pull request (PR) is opened against the `main` branch.
- Ensures smooth and automated deployment workflows for both staging and production environments.

### **2. IUWPAKSMS Module**

- Used to create an **AWS IAM User** with the following components:
  - **Access Keys**: Generated for the IAM user.
  - **Secret in Secrets Manager**: Stores the user's access keys securely.
  - **IAM Policy**: Attached to the user for permissions.
- This module allows secure access to both the **BWV** and **SWV** modules, ensuring credentials are managed effectively and securely.

### **3. BWV Module**

- Creates an **S3 bucket** with the following features:
  - **Bucket Versioning**: Ensures data integrity and the ability to recover previous versions of objects.

### **4. SWV Module**

- Creates a **Secrets Manager secret** with **versioning** capabilities.
  - Ensures that secrets can be updated and rotated securely while maintaining access to previous versions when needed.

---

## Purpose of This Module

The primary purpose of this module is to:

1. **Create a Data Staging Area**:

   - Provides a secure location for staging data with the flexibility and reliability of S3 bucket versioning.

2. **Enable Secure Variable Passing**:

   - Leverages AWS Secrets Manager to securely store and manage sensitive variables.
   - Simplifies secure access to secrets while maintaining version control.

3. **Facilitate Credential Rotation**:

   - Provides an easy mechanism for rotating user credentials.
   - Ensures compliance with security best practices by using Secrets Manager to manage and rotate access keys securely.

4. **Support a Containerized Application**:
   - Provides CI/CD workflows for deploying containerized applications in both staging and production environments using Cloud Run and Cloud Build.
   - Ensures secure integration between application components and data staging areas through IAM and Secrets Manager.

By combining these modules, this Terraform module provides a robust solution for managing data staging, containerized application deployment, and secure credential management in a unified and efficient manner.
