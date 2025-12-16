output "all-ads-in-tenancy" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}
output "compartment-name" {
  value = oci_identity_compartment.tf-compartment.name
}

output "compartment-OCID" {
  value = oci_identity_compartment.tf-compartment.id
}

output "public-ip-for-compute-instance" {
  value = oci_core_instance.oci_instance.public_ip
}

################

output "instance-name" {
  value = oci_core_instance.oci_instance.display_name
}

output "instance-OCID" {
  value = oci_core_instance.oci_instance.id
}

output "instance-region" {
  value = oci_core_instance.oci_instance.region
}

output "instance-shape" {
  value = oci_core_instance.oci_instance.shape
}

output "instance-state" {
  value = oci_core_instance.oci_instance.state
}

output "instance-OCPUs" {
  value = oci_core_instance.oci_instance.shape_config[0].ocpus
}

output "instance-memory-in-GBs" {
  value = oci_core_instance.oci_instance.shape_config[0].memory_in_gbs
}

output "time-created" {
  value = oci_core_instance.oci_instance.time_created
}

output "vcn_id" {
  description = "OCID of the VCN that is created"
  value       = module.vcn.vcn_id
}




output "id-for-route-table-that-includes-the-internet-gateway" {
  description = "OCID of the internet-route table. This route table has an internet gateway to be used for public subnets"
  value       = module.vcn.ig_route_id
}
output "nat-gateway-id" {
  description = "OCID for NAT gateway"
  value       = module.vcn.nat_gateway_id
}
output "id-for-for-route-table-that-includes-the-nat-gateway" {
  description = "OCID of the nat-route table - This route table has a nat gateway to be used for private subnets. This route table also has a service gateway."
  value       = module.vcn.nat_route_id
}

output "private-security-list-name" {
  value = oci_core_security_list.private-security-list.display_name
}
output "private-security-list-OCID" {
  value = oci_core_security_list.private-security-list.id
}

output "public-security-list-name" {
  value = oci_core_security_list.public-security-list.display_name
}
output "public-security-list-OCID" {
  value = oci_core_security_list.public-security-list.id
}

output "private-subnet-name" {
  value = oci_core_subnet.vcn-private-subnet.display_name
}
output "private-subnet-OCID" {
  value = oci_core_subnet.vcn-private-subnet.id
}

output "public-subnet-name" {
  value = oci_core_subnet.vcn-public-subnet.display_name
}
output "public-subnet-OCID" {
  value = oci_core_subnet.vcn-public-subnet.id
}