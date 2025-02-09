# Terraform Integration Guide

This guide outlines the practices and standards for integrating Terraform configurations in this repository. It is designed to ensure consistency, scalability, and maintainability across all modules and projects.

---

## Best Practices

### `.tfvars` Files

- **Base Modules and Argument Combinations**:
  - Due to the flexibility of base modules, there are many possible argument combinations.
  - `.tfvars` files are **git ignored** to prevent accidental commits of sensitive information.
  - Example `.tfvars` files (prefixed with `ex_`) are **not git ignored** and can be referenced for future integrations.
  - **IMPORTANT**: Ensure that no authentication credentials or sensitive data are left in example `.tfvars` files.

### Terraform State Management

- All files controlling **Terraform state** are **git ignored**:
  - This ensures security and avoids state file conflicts.
  - After cloning the repo or pulling a new module, **run `terraform init`** to initialize the module.
- **State Storage**:
  - Terraform state is stored on a virtual machine with **backups** enabled.
  - Access to the state requires:
    - A valid `.pem` file.
    - A **whitelisted IP address**.
  - This setup allows authorized developers to access and modify the state.

### Naming Conventions

- **In-Use Configuration Files**:
  - Use **camelCase** for naming files that contain active configurations.
  - Ensure the Terraform workspace for a module matches the `.tfvars` file name (without the `.tfvars` extension).
- **Project Modules**:
  - Use intentional and descriptive names.
  - Prefix the name with the first character of each word (e.g., `containerLambdaCiCd` becomes `CLCC_containerLambdaCiCd`).
  - For variables in these modules, use the prefix for shorter names (e.g., `CLCC_var` instead of `containerLambdaCiCd_var`).

---

## Creating Base Resources

When creating base modules for a specific provider (e.g., AWS, GCP, Azure), follow these steps:

1. Include **links to the argument reference** for the provider's Terraform documentation.
2. Include **links to any argument objects** required for complex configurations.
3. Ensure all possible arguments are accounted for to maximize flexibility in future integrations.

---

## Example Workflow

1. **Adding a New Base Module**:

   - Create the module with all possible argument combinations.
   - Add documentation links to argument references and objects.
   - Test the module with an example `.tfvars` file prefixed with `ex_`.

2. **Cloning the Repository**:

   - Run `terraform init` to set up the required dependencies and providers.

3. **State Management**:

   - Access the virtual machine with the `.pem` file and from a whitelisted IP.
   - Modify state files as necessary.

4. **Creating a New Project Module**:
   - Combine base modules into a project module.
   - Name the module intentionally and prefix it (e.g., `CLCC_containerLambdaCiCd`).
   - Use the prefix for variable declarations (e.g., `CLCC_var`).

---

By following this guide, you’ll ensure seamless integration of Terraform configurations while maintaining security and consistency across the repository.

---

```
        _ _______        _______ _
       /_/_______/\-----/\_______\_\
      / /\    _  \ \---/ /  _    /\ \
     / /  \  \_\  \ \-/ /  /_/  /  \ \
    /_/ /\ \_______\/-\/_______/ /\ \_\
   /\ \ \/ /  _    /\-/\   _   \ \/ / /\
  /\ \ \  /  /_/  / /-\ \  \_\  \  / / /\
 /  \ \_\/_______/ /---\ \_______\/_/ /  \
/ /\ \/\_\_______\/-----\/_______/_/\/ /\ \
\ \/ /\/_/_______/\-----/\_______\_\/\ \/ /
 \  / / /\    _  \ \---/ /  _    /\ \ \  /
  \/ / /  \  \_\  \ \-/ /  /_/  /  \ \ \/
   \/_/ /\ \_______\/-\/_______/ /\ \_\/
    \ \ \/ /  _    /\-/\   _   \ \/ / /
     \ \  /  /_/  / /-\ \  \_\  \  / /
      \_\/_______/ /---\ \_______\/_/
       \_\_______\/-----\/_______/_/
```
