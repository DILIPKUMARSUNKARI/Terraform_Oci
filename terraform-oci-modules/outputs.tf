output "prod_vcn_id" {
  description = "VCN OCID"
  value       = module.prod_vcn.vcn_id
}

output "vcn_id" {
  value = module.vcn.vcn_id
}

output "dev_vcn_id" {
  value = module.dev_vcn.vcn_id
}

output "prod_vcn_cidr" {
  value = module.prod_vcn.vcn_cidr
}