resource "oci_core_instance" "oci_instance" {
  # Required
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.compartment_ocid
  shape               = var.shape
  shape_config {
    ocpus         = "1"
    memory_in_gbs = "1"
  }
  source_details {
    source_id   = var.image_id
    source_type = "image"
  }

  # Optional
  display_name = "my_Terraform_VM"
  create_vnic_details {
    assign_public_ip = true
    subnet_id        = oci_core_subnet.public_subnet.id
  }
  metadata = {
    ssh_authorized_keys = file("C:/Users/dilip/.ssh/oci_vm.pub")
  }
  preserve_boot_volume = false
  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y httpd",
      "sudo systemctl enable httpd",
      "sudo systemctl start httpd"
    ]

    connection {
      type        = "ssh"
      user        = "opc"
      private_key = file("C:/Users/dilip/.ssh/oci_vm")
      host        = self.public_ip
    }
  }
}

