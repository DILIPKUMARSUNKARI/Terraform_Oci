variable "compartment_id" {
  description = "Compartment OCID where VCN will be created"
  type        = string
}

variable "vcn_name" {
  description = "VCN display name"
  type        = string
}

variable "cidr_block" {
  description = "VCN CIDR block"
  type        = string
}

variable "dns_label" {
  description = "DNS label for VCN"
  type        = string
}
