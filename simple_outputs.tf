# Simple string output
output "simple_message" {
    value = "Hello from Terraform!"
}

# Output from variable
output "project_name_output" {
    value = var.project_name
}

# Output with string interpolation
output "greeting" {
    value = "Welcome to ${var.project_name}"
}
