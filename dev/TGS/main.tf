provider "aws" {
  region = var.region  
}

module "LB-TGS" {
  source = "../../module/TGS"

  region = var.region

  vpc-tagname = var.vpc-tagname

  lb-tgs-awx-web = var.lb-tgs-awx-web
  lb-tgs-awx-was = var.lb-tgs-awx-was
}
