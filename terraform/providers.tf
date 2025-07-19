terraform {
    required_providers {
        random = {
            source  = "hashicorp/random"
            version = "~> 3.0"
        }
        null = {
            source  = "hashicorp/null"
            version = "~> 3.0"
        }
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}
