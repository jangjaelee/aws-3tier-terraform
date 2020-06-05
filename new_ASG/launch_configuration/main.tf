provider "aws" {
  region = var.region  
}

module "launch_configuration" {
  source = "../../module/launch_configuration"

  region = var.region

  key-pair           = var.key-pair
  ami-owner          = var.ami-owner

  # Web variable
  AMI-name-WEB       = var.AMI-name-WEB
  web-instance-type  = var.web-instance-type
  lc-awx-web         = var.lc-awx-web
  lc-awx-web-vsize   = var.lc-awx-web-vsize
  lc-awx-web-vtype   = var.lc-awx-web-vtype
  sg-awx-private-web = var.sg-awx-private-web

  # WAS variable
  AMI-name-WAS       = var.AMI-name-WAS
  was-instance-type  = var.was-instance-type
  lc-awx-was         = var.lc-awx-was
  lc-awx-was-vsize   = var.lc-awx-was-vsize
  lc-awx-was-vtype   = var.lc-awx-was-vtype
  sg-awx-private-was = var.sg-awx-private-was
}
