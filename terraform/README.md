# Terraform Infrastructure

This directory contains Infrastructure as Code using Terraform.

## Structure

terraform/
├── modules/
│ └── vpc/
│     ├── main.tf
│     ├── variables.tf
│     └── outputs.tf
│
└── environments/
└── dev/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    └── backend.tf


## Design

Reusable Terraform modules are separated from environment configuration.

Modules:
- VPC
- Networking
- Compute
- Database

Environments:
- dev
- staging
- production

## Workflow
1## Workflow

1. terraform fmt
   Format Terraform configuration files

2. terraform init
   Initialize Terraform and download providers

3. terraform validate
   Validate Terraform syntax and configuration

4. terraform plan
   Preview infrastructure changes before deployment

5. terraform apply
   Deploy infrastructure
