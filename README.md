# Terraform Learning Examples

A comprehensive collection of Terraform examples demonstrating various concepts and patterns for infrastructure as code.

## Project Structure

All Terraform files are organized in the `terraform/` directory:

```
terraform/
├── providers.tf          # Provider configurations
├── variables.tf          # Input variables
├── outputs.tf           # Output values
├── main.tf              # Basic null resource example
├── random.tf            # Random password generation
├── random_pet.tf        # Random pet name examples
├── terraform_data.tf    # Terraform data resource examples
├── count_null_example.tf # Count meta-argument example
├── for_each_example.tf  # For_each meta-argument example
└── aws_multi_region.tf  # AWS multi-region deployment
```

## Examples Included

### 1. Basic Resources (`main.tf`)
- Simple null resource with local-exec provisioner
- Demonstrates basic Terraform resource syntax

### 2. Random Resources (`random.tf`, `random_pet.tf`)
- Random password generation with custom parameters
- Multiple random pet name configurations
- Shows different separators and lengths

### 3. Terraform Data Resources (`terraform_data.tf`)
- Modern replacement for null_resource
- Demonstrates resource migration with `moved` blocks
- Local-exec provisioner examples

### 4. Count Meta-Argument (`count_null_example.tf`)
- Creates multiple similar resources using count
- Shows how to reference count.index
- Demonstrates resource naming patterns

### 5. For_Each Meta-Argument (`for_each_example.tf`)
- **NEW**: Creates resources using for_each with maps
- Demonstrates `each.key` and `each.value` usage
- Shows server configuration patterns
- Example creates web, api, and database server configurations

### 6. AWS Multi-Region Deployment (`aws_multi_region.tf`)
- S3 bucket creation in multiple regions
- Provider aliasing for multi-region deployments
- Cross-region resource management

## Variables

| Name | Description | Type | Default |
|------|-------------|------|---------|  
| project_name | Name of the project | string | "my-terraform-project" |
| environment | Environment name | string | "development" |
| pet_length | Length of the random pet name | number | 2 |
| separator | Separator for the pet name | string | "-" |

## Outputs

| Name | Description |
|------|-------------|
| project_name_output | The project name from variable |
| project_info | Project information object |
| simple_message | A simple static message |
| greeting | Personalized greeting message |
| random_password | Generated random password (sensitive) |
| pet_name | The generated pet name |
| short_pet_name | Single word pet name |
| prefixed_pet_name | 3-word pet name with prefix |
| message | Message from terraform_data resource |
| resource_names | List of resource names from count example |
| server_info | **NEW**: Information about servers created with for_each |
| west_bucket_name | S3 bucket name in us-west-1 |
| east_bucket_name | S3 bucket name in us-east-1 |

## Requirements

- Terraform >= 1.0
- Random provider ~> 3.0
- Null provider ~> 3.0
- AWS provider ~> 5.0

## Branch Structure

- `main` - Stable examples and documentation
- `for_each_example` - **Current branch** with for_each examples and reorganized structure
- `requirement-samples` - Original exercise files
- `module-structure` - Modularized code structure  
- `aws-multi-region` - AWS multi-region deployment exercise

---

*This README documents a learning-focused Terraform project with examples ranging from basic to advanced patterns.*
