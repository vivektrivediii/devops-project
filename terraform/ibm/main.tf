provider "ibm" {
  region = var.ibm_region
}

resource "ibm_is_instance" "vm" {
  name    = var.instance_name
  image   = "r014-3b06e5fa-f1b7-4a1d-b75c-c2e6d81b1d53" # Ubuntu 20.04
  profile = "bx2-2x8"
  vpc     = ibm_is_vpc.vpc.id
  zone    = "us-south-1"
  primary_network_interface {
    subnet = ibm_is_subnet.subnet.id
  }
}

resource "ibm_is_vpc" "vpc" {
  name = "papersocial-vpc"
}

resource "ibm_is_subnet" "subnet" {
  name = "papersocial-subnet"
  vpc  = ibm_is_vpc.vpc.id
  zone = "us-south-1"
  ipv4_cidr_block = "10.10.10.0/24"
}
