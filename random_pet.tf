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

output "pet_name" {
    value = random_pet.example.id
    description = "A randomly generated pet name with 2 words"
}

output "short_pet_name" {
    value = random_pet.short.id
    description = "A single word pet name"
}

output "prefixed_pet_name" {
    value = random_pet.long_with_prefix.id
    description = "A 3-word pet name with prefix and underscore separator"
}
