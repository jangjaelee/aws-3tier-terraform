data "aws_vpc" "vpc-id" {
  filter {
    name = "tag:Name"
    values = [var.vpc-tagname]
  }
}

data "aws_subnet_ids" "web-subnet-ids" {
  vpc_id = data.aws_vpc.vpc-id.id

  filter {
    name = "tag:Name"
    values = [var.sn-public-2a-webelb,var.sn-public-2c-webelb]
  }
}

data "aws_security_group" "sg-awx-public-webelb" {
  filter {
    name = "tag:Name"
    values = [var.sg-awx-public-webelb]
  }
}

data "aws_subnet_ids" "was-subnet-ids" {
  vpc_id = data.aws_vpc.vpc-id.id

  filter {
    name = "tag:Name"
    values = [var.sn-private-2a-waselb,var.sn-private-2c-waselb]
  }
}

data "aws_security_group" "sg-awx-private-waselb" {
  filter {
    name = "tag:Name"
    values = [var.sg-awx-private-waselb]
  }
}

data "aws_lb_target_group" "TGS-awx-WEB" {
  #name = "LB-TGS-awx-WEB"  
  name =  var.TGS-awx-WEB 
}

data "aws_lb_target_group" "TGS-awx-WAS" {
  #name = "LB-TGS-awx-WAS"
  name = var.TGS-awx-WAS
}

data "aws_route53_zone" "awx-shop" {
  name         = var.awx-shop-dns-name
  private_zone = false
}
