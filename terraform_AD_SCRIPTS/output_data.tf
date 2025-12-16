output "all-ads-in-tenancy" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}