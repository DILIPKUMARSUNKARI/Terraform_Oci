variable "compartment_id" {
  type = string
}
variable "tenancy_ocid" {
  type = string
}

variable "user_ocid" {
  type = string
}

variable "region" {
  type = string
}

# Workspace-based CIDR
variable "vcn_cidr" {
  type = map(string)
}

# Workspace-based compute shape
variable "instance_shape" {
  type = map(string)
}