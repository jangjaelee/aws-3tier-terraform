provider "aws" {
  region = var.region  
}

module "keypair" {
  source = "../../module/keypair"

  ec2_keypair = var.ec2_keypair
}
