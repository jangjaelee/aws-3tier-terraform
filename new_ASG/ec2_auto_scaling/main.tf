provider "aws" {
  region = var.region  
}

module "ec2_auto_scaling" {
  source = "../../module/ec2_auto_scaling"

  region = var.region

  lc-awx-web = var.lc-awx-web
  lc-awx-was = var.lc-awx-was

  sn-private-2a-web = var.sn-private-2a-web
  sn-private-2c-web = var.sn-private-2c-web

  sn-private-2a-was = var.sn-private-2a-was
  sn-private-2c-was = var.sn-private-2c-was

  lb-tgs-awx-web    = var.lb-tgs-awx-web
  lb-tgs-awx-was    = var.lb-tgs-awx-was

  # instance minimum size
  asg-awx-web-instance-min = var.asg-awx-web-instance-min
  asg-awx-was-instance-min = var.asg-awx-was-instance-min

  # instance maximum size
  asg-awx-web-instance-max = var.asg-awx-web-instance-max
  asg-awx-was-instance-max = var.asg-awx-was-instance-max

  # Auto Scring Name of WEB/WAS
  name-asg-awx-web         = var.name-asg-awx-web
  name-asg-awx-was         = var.name-asg-awx-was
}
