resource "oci_identity_compartment" "demo" {
  compartment_id = var.compartment_id
  name           = "tf-backend-demo"
  description    = "Created using Terraform backend demo"
}