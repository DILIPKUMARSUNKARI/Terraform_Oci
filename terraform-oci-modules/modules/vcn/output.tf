output "vcn_id" {
  description = "VCN OCID"
  value       = oci_core_vcn.this.id
}

output "vcn_cidr" {
  value = oci_core_vcn.this.cidr_block
}
