provider "aws" {
  region = var.region
}

module "bastion-eip" {
  source = "../../module/bastion-eip"

  region = var.region
  bastion-id     = var.bastion-id
  eip-id         = var.eip-id
}

