resource "null_resource" "local_demo" {
  provisioner "local-exec" {
    command = "echo Terraform provisioner executed > provisioner.txt"
  }
}

