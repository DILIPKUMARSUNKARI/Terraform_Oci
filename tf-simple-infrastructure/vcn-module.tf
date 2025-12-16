module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.6.0"
  # insert the 1 required variable here
  # Required Inputs
  compartment_id = var.compartment_ocid

  # Optional Inputs 
  region = var.region

  # Changing the following default values
  vcn_name                = "terraform-vcn"
  create_internet_gateway = true
  create_nat_gateway      = true
  create_service_gateway  = true

  # Using the following default values
  vcn_dns_label = "dilipvcn"
  vcn_cidrs     = ["11.0.0.0/16"]

}