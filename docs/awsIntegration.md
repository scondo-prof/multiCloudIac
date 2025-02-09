# AWS Integrations

This document outlines the tools, configurations, and resources used for AWS integrations, particularly focusing on EKS Fargate and Prefect integrations. It also details the storage and utilization of Kubernetes manifest files and Helm charts for seamless infrastructure management.

---

## Tools and Command Line Utilities

### **AWS CLI**

- The **AWS CLI** is utilized for managing AWS resources programmatically.
- Common tasks include:
  - Creating and managing S3 buckets.
  - Setting up IAM roles and policies.
  - Managing EKS clusters and other AWS services.
- Example:
  ```bash
  aws eks update-kubeconfig --region us-east-1 --name my-eks-cluster
  ```

### **eksctl Command Line Tool**

- The **eksctl** tool is used for creating and managing EKS clusters.
- It simplifies the setup and configuration of EKS Fargate integrations.

#### **EKS Fargate Integration for Prefect**

- Prefect's Kubernetes agent is deployed in an EKS Fargate cluster to handle Prefect flow runs.
- **Integration Details**:
  - **EKS Cluster Configuration**:
    - The cluster is created with **eksctl**, leveraging Fargate for compute.
    - Each Prefect flow run utilizes **borrowed compute containers** from Fargate.
  - Example `eksctl` configuration file:
    ```yaml
    apiVersion: eksctl.io/v1alpha5
    kind: ClusterConfig
    metadata:
      name: prefect-eks-cluster
      region: us-east-1
    fargateProfiles:
      - name: prefect-fargate-profile
        selectors:
          - namespace: prefect
    ```
  - Deployment Command:
    ```bash
    eksctl create cluster -f eksctl-config.yaml
    ```

---

## Kubernetes Manifest Files

- **Purpose**:
  - Define the resources and configurations needed for deploying applications in the EKS cluster.
- **Location**:
  - Stored in a dedicated directory under the AWS integration repository (e.g., `manifests/`).
- **Examples**:
  - Deployment and service configurations for Prefect agents.
  - Namespace and role-based access control (RBAC) definitions.

Example Manifest:

```yaml
worker:
  cloudApiConfig:
    accountId: <account-id>
    workspaceId: <workspace-id>
  config:
    workPool: <work-pool-name>
```

---

## Helm Charts

- **Purpose**:
  - Used for deploying and managing Kubernetes applications in the EKS cluster.
- **Links to Helm Charts**:
  - **Prefect Helm Chart**:
    - [Prefect Helm Chart Documentation](https://github.com/PrefectHQ/prefect-helm)
  - **Kubernetes Metrics Server**:
    - [Metrics Server Helm Chart](https://artifacthub.io/packages/helm/bitnami/metrics-server)
  - **NGINX Ingress Controller**:
    - [NGINX Helm Chart](https://artifacthub.io/packages/helm/bitnami/nginx-ingress-controller)

---

## Future Deprecation

- This integration method will soon be **deprecated** in favor of a more unified approach:
  - All **CloudFormation infrastructure** will be migrated to the `tf` directory and written in Terraform for consistency.
  - Kubernetes manifest files and EKS-related configurations will be moved to the **`k8s` directory**.
- **Benefits of Transition**:
  - Centralized infrastructure management.
  - Simplified workflows with a consistent toolset.
  - Enhanced scalability and maintainability by leveraging Kubernetes and Terraform best practices.

By adhering to this plan, we ensure our infrastructure evolves towards a modern and efficient architecture.

---

```
          [_,_])    \ /       \|
         /|=T=|]     /   __  __\
         |\ " //     |_  9   p ]\
         ||'-'/--.  / /\ =|  \|\ \
        /|| <\/> |\ | '._, @ @)<_)
       | |\   |  |   \.__/(_;_)
       |  .   H  |   |  :  '='|
       |  |  _H__/  _| :      |
        \  '.__  \ /  ;      ';
       __'-._(_}==.'  :       ;
      (___|    /-' |   :.     :
     [.-'  \   |   \   \ ;   :
    .-'     |  |    |  |   ":
   /        |==|     \  \  /  \_
  /         [  |      '._\_ -._ \
 /           \__)   __.- \ \   )\\
/       |        /.'      >>)
|        \       |\     |
|     .'  '-.    | \    /
|    /     /     / /   /
     snd   |    /
```
