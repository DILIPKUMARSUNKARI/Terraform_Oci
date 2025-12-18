resource "oci_core_vcn" "vcn" {
  compartment_id = var.tenancy_ocid

  display_name = "vcn-${terraform.workspace}"
  cidr_block   = var.vcn_cidr[terraform.workspace]
  dns_label    = "vcn${terraform.workspace}"
}

resource "oci_core_subnet" "subnet" {
  compartment_id = var.tenancy_ocid
  vcn_id         = oci_core_vcn.vcn.id

  display_name = "subnet-${terraform.workspace}"
  cidr_block = cidrsubnet(
    var.vcn_cidr[terraform.workspace],
    8,
    1
  )
}

##############COMPUTE########################

resource "oci_core_instance" "oci_instance" {
  # Required
  count               = terraform.workspace == "prod" ? 2 : 1
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.compartment_id
  shape               = var.instance_shape[terraform.workspace]
  shape_config {
    ocpus         = "1"
    memory_in_gbs = "1"
  }
  source_details {
    source_id   = data.oci_core_images.images.images[0].id
    source_type = "image"
  }

  # Optional
  display_name = "my_Terraform_VM-${terraform.workspace}"
  create_vnic_details {
    assign_public_ip = true
    subnet_id        = oci_core_subnet.subnet.id
  }
  metadata = {
    ssh_authorized_keys = file("C:/Users/dilip/.ssh/oci_vm.pub")
  }
  preserve_boot_volume = false
}






