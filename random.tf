resource "random_password" "example" {
    length           = 16
    special          = true
    override_special = "!@#$%^&*()_+"
}

