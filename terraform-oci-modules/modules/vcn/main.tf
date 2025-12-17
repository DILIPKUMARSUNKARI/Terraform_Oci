resource "oci_core_vcn" "this" {
  compartment_id = var.compartment_id
  display_name   = var.vcn_name
  cidr_block     = var.cidr_block
  dns_label      = var.dns_label
}