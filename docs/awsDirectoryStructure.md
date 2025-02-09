# AWS Directory Structure

This directory is dedicated to declarative infrastructure configurations that are not managed using Terraform. It provides a structured approach to managing AWS resources through organized subdirectories and file formats.

---

## Directory Structure

### **Subdirectories**

- Each subdirectory is named after the **AWS service** it corresponds to (e.g., `eksFargate/`).

### **File Types**

- **YAML Files (`*.yaml`)**:

  - Used for **CloudFormation templates**.
  - Define declarative infrastructure for AWS services.

- **JSON Files (`*.json`)**:

  - Contain reusable configurations for various AWS services.
  - Examples include IAM policies, API Gateway configurations, and Lambda function definitions.

- **Text Files (`*.txt`)**:
  - Contain links to relevant resources and documentation.
  - Provide step-by-step instructions for building certain pieces of infrastructure manually or with external tools.

---

## Transition Plan

### Future Deprecation

- This directory structure and method of managing AWS infrastructure will eventually be **deprecated** in our tech stack.
- **Reasons for Deprecation**:
  - The declarative infrastructure currently managed in CloudFormation will be migrated to the `tf` directory and written in Terraform for consistency and scalability.
  - The AWS directory will be replaced by a **`k8s` directory** for managing Kubernetes-based infrastructure.

### Benefits of the Transition

- **Centralized Infrastructure Management**:

  - All infrastructure code will reside in the `tf` directory, simplifying resource management.

- **Kubernetes Adoption**:

  - The `k8s` directory will enable streamlined deployment and management of cloud-native applications.

- **Standardization**:
  - Reduces the fragmentation of declarative infrastructure tools and ensures consistency across the tech stack.

---

By maintaining this directory structure, we ensure the current approach remains organized and efficient until the transition to a Kubernetes and Terraform-centric infrastructure is complete.

---

```
        .n.                     |
       /___\          _.---.  \ _ /
       [|||]         (_._ ) )--;_) =-
       [___]           '---'.__,' \
       }-=-{                    |
       |-" |
       |.-"|                p
~^=~^~-|_.-|~^-~^~ ~^~ -^~^~|\ ~^-~^~-
^   .=.| _.|__  ^       ~  /| \
 ~ /:. \" _|_/\    ~      /_|__\  ^
.-/::.  |   |""|-._    ^   ~~~~
  `===-'-----'""`  '-.              ~
                 __.-'      ^
```
