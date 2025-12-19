terraform {
  backend "oci" {
    bucket    = "my_demo_bucket"
    namespace = "axojviqbbs15"

    region = "ap-hyderabad-1"
    key    = "dev/terraform.tfstate"
  }
}