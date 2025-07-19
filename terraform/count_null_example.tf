resource "terraform_data" "count_example" {
    count = 3
    
    input = {
        name = "resource-${count.index}"
        index = count.index
    }
    
    provisioner "local-exec" {
        command = "echo 'Creating resource ${count.index}'"
    }
}

