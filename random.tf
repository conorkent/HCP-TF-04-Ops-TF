resource "random_password" "example" {
    length           = 16
    special          = true
    override_special = "!@#$%^&*()_+"
}

output "generated_password" {
    value = random_password.example.result
    sensitive = true
}
