resource "random_pet" "example" {
    length = 2
    separator = "-"
}

resource "random_pet" "short" {
    length = 1
}

resource "random_pet" "long_with_prefix" {
    length = 3
    separator = "_"
    prefix = "my"
}

