provider "null" {}
  

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

