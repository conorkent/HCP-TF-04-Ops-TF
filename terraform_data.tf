terraform {
    required_providers {
        null = {
            source  = "hashicorp/null"
            version = "~> 3.0"
        }
    }
}

resource "terraform_data" "example" {
  input = {
    message = "Hello, World!"
  }
  
  provisioner "local-exec" {
    command = "echo 'Hello, World!'"
  }
}

moved {
  from = null_resource.example
  to   = terraform_data.example
}

output "message" {
    value = terraform_data.example.output.message
}