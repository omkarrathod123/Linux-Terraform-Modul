# Terraform Configuration Repository

This repository contains all Terraform configuration files used for building, managing, and versioning infrastructure safely and efficiently.

## About Terraform

Terraform is an infrastructure as code (IaC) tool that enables automated provisioning and management of cloud resources. It supports various service providers, including popular cloud platforms and custom in-house solutions. 

Terraform configuration files define the necessary components to deploy a single application or an entire datacenter. Using these configurations, Terraform:
- Generates an execution plan to achieve the desired state.
- Applies changes to build the described infrastructure.
- Detects modifications and creates incremental execution plans for updates.

## Terraform Commands

Below are the essential Terraform commands used for initialization, validation, and deployment:

1. `terraform init` – Initializes the working directory.
2. `terraform validate` – Validates the configuration files.
3. `terraform plan` – Generates an execution plan.
4. `terraform apply` – Applies the configuration and provisions resources.
5. `terraform destroy` – Deletes the managed infrastructure.

## Terraform .tfvars File

Terraform .tfvars files are best way to manage variable assignments systematically in Infrastructure as Code (IaC) projects.

1. `Create .tfvars file` - To create a .tfvars file, simply need to define the variables and their values in the file. created file must end with .tfvars extension.
2. `How to use .tfvars file` - To use a .tfvars file, add command line avg '-var-file="your file name."'.
3. `Example of .tfvars file` - lets consider file name is dev.tfvars, command will be:
```sh
terraform plan -var-file="dev.tfvars"
```

## Terraform Autoloading .tfvars File

Teraform can automatically load .tfvars file if they ar named with terraform.tfviles.We can also add names ending in .auto.tfvars to consider or tell to load file automatically.

---