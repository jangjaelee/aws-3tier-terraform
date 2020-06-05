provider "aws" {
  region = var.region  
}

module "route53" {
  source = "../../module/route53"

  region  = var.region
  vpc-tagname = var.vpc-tagname
  public_domain_name  = var.public_domain_name
  private_domain_name = var.private_domain_name
}
