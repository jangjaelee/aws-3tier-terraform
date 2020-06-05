data "aws_vpc" "vpc-id" {
  filter {
    name = "tag:Name"
    values = [var.vpc-tagname]
  }
}

resource "aws_lb_target_group" "TGS-awx-WEB" {
  name        = var.lb-tgs-awx-web
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = data.aws_vpc.vpc-id.id

   tags = {
    Name = var.lb-tgs-awx-web
  } 
}

resource "aws_lb_target_group" "TGS-awx-WAS" {
  name        = var.lb-tgs-awx-was
  port        = 81
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = data.aws_vpc.vpc-id.id

   tags = {
    Name = var.lb-tgs-awx-was
  } 
}
