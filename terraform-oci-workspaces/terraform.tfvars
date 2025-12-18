tenancy_ocid   = "ocid1.tenancy.oc1..aaaaaaaamfoedu4tzc7d5nnvd6epjey64j26bc5uqdjxoiqro774bjgb2xoq"
user_ocid      = "ocid1.user.oc1..aaaaaaaa7m5dx7vlxsezy7lqatrdkotyw7hjy236j27zfmzzzcunf5d7oyja"
region         = "ap-hyderabad-1"
compartment_id = "ocid1.compartment.oc1..aaaaaaaatrgrzlrcz3pxjdo6zvixtl7khxush7hmmfjxybneeodk3rbblsvq"
#image_id       = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaasujr5npyxygi4qsyrzpd33o4pujvcofmuhkxmyyvdmz33nlkac4q"

vcn_cidr = {
  dev  = "10.10.0.0/16"
  prod = "10.20.0.0/16"
}

instance_shape = {
  dev  = "VM.Standard.E2.1.Micro"
  prod = "VM.Standard.E3.Flex"
}