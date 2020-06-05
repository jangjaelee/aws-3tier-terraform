provider "aws" {
  region = var.region
}

module "rds" {
  source = "../../module/rds"

  region         = var.region

  sn-private-2a  = var.sn-private-2a
  sn-private-2c  = var.sn-private-2c
  rds-family     = var.rds-family
  rds-time_zone  = var.rds-time_zone
  sg-name        = var.sg-name
}
