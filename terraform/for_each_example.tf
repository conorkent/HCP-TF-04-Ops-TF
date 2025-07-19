# Simple for_each with a map
resource "terraform_data" "servers" {
  for_each = {
    web = "nginx"
    api = "nodejs"
    db  = "postgres"
  }

  input = {
    server_type = each.key
    service     = each.value
    name        = "${each.key}-server"
  }

  provisioner "local-exec" {
    command = "echo 'Setting up ${each.key} server with ${each.value}'"
  }
}


