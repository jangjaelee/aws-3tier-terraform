provider "aws" {
  region = var.region  
}

module "bastion-instance" {
  source = "../../module/bastion-instance"

  region = var.region
  ami-id         = var.ami-id
  instance-type  = var.instance-type
  bastion-nic    = var.bastion-nic
  key-pair       = var.key-pair
}
