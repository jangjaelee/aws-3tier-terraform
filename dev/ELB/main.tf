provider "aws" {
  region = var.region  
}

module "ELB" {
  source = "../../module/ELB"

  region = var.region

  vpc-tagname           = var.vpc-tagname
  s3-alb-accesslog      = var.s3-alb-accesslog

  # Information for Web ALB
  alb-awx-web           = var.alb-awx-web
  sn-public-2a-webelb   = var.sn-public-2a-webelb
  sn-public-2c-webelb   = var.sn-public-2c-webelb
  sg-awx-public-webelb  = var.sg-awx-public-webelb

  # Information for WAS ALB
  alb-awx-was           = var.alb-awx-was
  sn-private-2a-waselb  = var.sn-private-2a-waselb
  sn-private-2c-waselb  = var.sn-private-2c-waselb
  sg-awx-private-waselb = var.sg-awx-private-waselb

  # Information for Target Group Name
  TGS-awx-WEB           = var.TGS-awx-WEB
  TGS-awx-WAS           = var.TGS-awx-WAS

  # awx.co.kr DNS name
  awx-shop-dns-name     = var.awx-shop-dns-name
}
