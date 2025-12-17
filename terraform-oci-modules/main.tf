module "vcn" {
  source         = "./modules/vcn"
  compartment_id = var.comp_id
  vcn_name       = "tf-vcn"
  cidr_block     = "10.0.0.0/16"
  dns_label      = "tfvcn"
}

module "dev_vcn" {
  source         = "./modules/vcn"
  compartment_id = var.comp_id
  vcn_name       = "dev-vcn"
  cidr_block     = "10.1.0.0/16"
  dns_label      = "devvcn"
}

module "prod_vcn" {
  source         = "./modules/vcn"
  compartment_id = var.compartment_id
  vcn_name       = "prod-vcn"
  cidr_block     = "10.2.0.0/16"
  dns_label      = "prodvcn"
}
