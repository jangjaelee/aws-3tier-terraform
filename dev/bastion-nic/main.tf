provider "aws" {
  region = var.region  
}

module "bastion-nic" {
  source = "../../module/bastion-nic"

  region = var.region
  sn-ec2-bastion  = var.sn-ec2-bastion
  sg-ec2-bastion  = var.sg-ec2-bastion
}
