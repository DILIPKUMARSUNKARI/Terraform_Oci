# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/containerengine_node_pool

resource "oci_containerengine_node_pool" "oke-node-pool" {
  # Required
  cluster_id         = oci_containerengine_cluster.oke-cluster.id
  compartment_id     = oci_identity_compartment.tf-compartment.id
  kubernetes_version = "v1.21.5"
  name               = "pool1"
  node_config_details {
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
      subnet_id           = oci_core_subnet.vcn-private-subnet.id
    }
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
      subnet_id           = oci_core_subnet.vcn-private-subnet.id
    }
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
      subnet_id           = oci_core_subnet.vcn-private-subnet.id
    }
    size = 3
  }
  node_shape = "VM.Standard2.1"

  # Using image Oracle-Linux-7.x-<date>
  # Find image OCID for your region from https://docs.oracle.com/iaas/images/ 
  node_source_details {
    image_id    = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaahfpjerh7bibz6ay2gdalkcll5bdg6n7erwptaai25ph6oc6jysga"
    source_type = "image"
  }

  # Optional
  initial_node_labels {
    key   = "name"
    value = "Terraform_K8_Kluster"
  }
}