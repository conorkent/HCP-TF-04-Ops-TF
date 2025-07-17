output "pet_name" {
    description = "The generated pet name"
    value       = random_pet.example.id
}

output "project_info" {
    description = "Project information"
    value = {
        name        = var.project_name
        environment = var.environment
        pet_name    = random_pet.example.id
    }
}

output "random_password" {
    description = "Generated random password"
    value       = random_password.example.result
    sensitive   = true
}

# Simple outputs
output "simple_message" {
    description = "A simple static message"
    value       = "Hello from Terraform!"
}

output "project_name_output" {
    description = "The project name from variable"
    value       = var.project_name
}

output "greeting" {
    description = "A personalized greeting message"
    value       = "Welcome to ${var.project_name}"
}

# Random password output
output "generated_password" {
    description = "Generated random password"
    value       = random_password.example.result
    sensitive   = true
}

# Terraform data output
output "message" {
    description = "Message from terraform_data resource"
    value       = terraform_data.example.output.message
}

# Count example output
output "resource_names" {
    description = "List of resource names from count example"
    value       = [for resource in terraform_data.count_example : resource.input.name]
}

# Random pet outputs
output "short_pet_name" {
    description = "A single word pet name"
    value       = random_pet.short.id
}

output "prefixed_pet_name" {
    description = "A 3-word pet name with prefix and underscore separator"
    value       = random_pet.long_with_prefix.id
}
