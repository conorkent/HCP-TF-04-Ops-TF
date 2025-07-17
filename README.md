# Terraform Demo Module

A simple Terraform module that demonstrates basic functionality with random resources.

## Features

- Generates random pet names
- Creates random passwords
- Configurable parameters
- Terraform data resources for demonstration

## AWS Multi-Region Deployment

This module now supports deploying resources in multiple AWS regions.

### Usage for Multi-Region

```hcl
module "aws_multi_region" {
    source = "github.com/yourusername/HCP-TF-04-Ops-TF/aws_multi_region"

    primary_region   = "us-west-1"
    secondary_region = "us-east-1"
}
```

## AWS Multi-Region Variables

| Name             | Description                  | Type   | Default   |
|------------------|------------------------------|--------|-----------|
| primary_region   | Primary region for resources | string | us-west-1 |
| secondary_region | Secondary region for resources| string | us-east-1 |

## Module Variables

| Name | Description | Type | Default |
|------|-------------|------|---------|  
| project_name | Name of the project | string | "my-terraform-project" |
| environment | Environment name | string | "development" |
| pet_length | Length of the random pet name | number | 2 |
| separator | Separator for the pet name | string | "-" |

## Outputs

| Name | Description |
|------|-------------|
| pet_name | The generated pet name |
| project_info | Project information object |
| random_password | Generated random password (sensitive) |

## AWS Multi-Region Outputs

| Name            | Description                         |
|-----------------|-------------------------------------|
| east_bucket_name| S3 bucket name in us-east-1          |
| west_bucket_name| S3 bucket name in us-west-1          |

## Module Outputs

| Name            | Description                         |
|-----------------|-------------------------------------|
| pet_name        | The generated pet name              |
| project_info    | Project information object          |
| random_password | Generated random password (sensitive)|

## Requirements

- Terraform >= 1.0
- Random provider ~> 3.0
- AWS provider ~> 5.0

## AWS Setup

### Prerequisites
- AWS CLI configured with appropriate credentials
- IAM permissions for S3 bucket creation

### Authentication
Ensure your AWS credentials are configured:
```bash
aws configure
```

Or set environment variables:
```bash
export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"
export AWS_DEFAULT_REGION="us-west-1"
```

## Branch Structure

- `requirement-samples` - Original exercise files
- `module-structure` - Modularized code structure  
- `aws-multi-region` - AWS multi-region deployment exercise

---

*This README was generated with AI assistance for documentation purposes.*
