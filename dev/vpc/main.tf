provider "aws" {
  region = var.region  
}

module "vpc" {
  source = "../../module/vpc"

  region     = var.region
  vpc_cidr   = var.vpc_cidr

  internet-nat-gw = var.internet-nat-gw
  sg_inbound-any  = var.sg_inbound-any
  sg_outbound-any = var.sg_outbound-any
  office_IP       = var.office_IP
}
