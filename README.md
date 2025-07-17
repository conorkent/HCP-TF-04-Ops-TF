# Terraform Demo Module

A simple Terraform module that demonstrates basic functionality with random resources.

## Features

- Generates random pet names
- Creates random passwords
- Configurable parameters
- Terraform data resources for demonstration

## Usage

```hcl
module "demo" {
    source = "github.com/yourusername/HCP-TF-04-Ops-TF"
    
    project_name = "my-awesome-project"
    environment  = "production"
    pet_length   = 3
    separator    = "_"
}
```

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
| pet_name | The generated pet name |
| project_info | Project information object |
| random_password | Generated random password (sensitive) |

## Requirements

- Terraform >= 1.0
- Random provider ~> 3.0
