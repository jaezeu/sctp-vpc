# SCTP Shared VPC Terraform

This repository provisions a shared AWS VPC for learners using Terraform.

## Region and State

- AWS region: `ap-southeast-1`
- Remote Terraform state backend:
	- S3 bucket: `sctp-core-tfstate`
	- State key: `ce-vpc.tfstate`

## Terraform Module

This project uses:

- `terraform-aws-modules/vpc/aws` `~> 6.6`

## Prerequisites

- Terraform installed (1.x recommended)
- AWS credentials configured locally (for example via `aws configure`, environment variables, or IAM role)
- Access to the backend bucket `sctp-core-tfstate`

## Usage

From this directory:

```bash
terraform init
terraform plan
terraform apply
```

To destroy resources when no longer needed:

```bash
terraform destroy
```

## Repository Structure

- `provider.tf`: AWS provider and region configuration
- `backend.tf`: Remote backend configuration for Terraform state
- `main.tf`: VPC and subnet definitions