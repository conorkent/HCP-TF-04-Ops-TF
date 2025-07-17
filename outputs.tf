# ===========================================
# PROJECT INFORMATION OUTPUTS
# ===========================================

output "project_name_output" {
    description = "The project name from variable"
    value       = var.project_name
}

output "project_info" {
    description = "Project information"
    value = {
        name        = var.project_name
        environment = var.environment
        pet_name    = random_pet.example.id
    }
}

# ===========================================
# SIMPLE DEMONSTRATION OUTPUTS
# ===========================================

output "simple_message" {
    description = "A simple static message"
    value       = "Hello from Terraform!"
}

output "greeting" {
    description = "A personalized greeting message"
    value       = "Welcome to ${var.project_name}"
}

# ===========================================
# RANDOM RESOURCE OUTPUTS
# ===========================================

output "random_password" {
    description = "Generated random password"
    value       = random_password.example.result
    sensitive   = true
}

output "pet_name" {
    description = "The generated pet name"
    value       = random_pet.example.id
}

output "short_pet_name" {
    description = "A single word pet name"
    value       = random_pet.short.id
}

output "prefixed_pet_name" {
    description = "A 3-word pet name with prefix and underscore separator"
    value       = random_pet.long_with_prefix.id
}

# ===========================================
# TERRAFORM DATA OUTPUTS
# ===========================================

output "message" {
    description = "Message from terraform_data resource"
    value       = terraform_data.example.output.message
}

output "resource_names" {
    description = "List of resource names from count example"
    value       = [for resource in terraform_data.count_example : resource.input.name]
}

# ===========================================
# AWS MULTI-REGION OUTPUTS
# ===========================================

output "west_bucket_name" {
    description = "S3 bucket name in us-west-1"
    value       = aws_s3_bucket.west_bucket.bucket
}

output "east_bucket_name" {
    description = "S3 bucket name in us-east-1"
    value       = aws_s3_bucket.east_bucket.bucket
}
