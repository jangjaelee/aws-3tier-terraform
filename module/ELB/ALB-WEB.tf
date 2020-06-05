resource "aws_lb" "ALB-awx-WEB" {
  name           = var.alb-awx-web
  internal       = false
  load_balancer_type = "application"
  security_groups = [data.aws_security_group.sg-awx-public-webelb.id]
  subnets         = [for s in data.aws_subnet_ids.web-subnet-ids.ids : s]
  ip_address_type = "ipv4"
  enable_http2    = true
  idle_timeout    = 60 #Default:60

  enable_deletion_protection = false

  #access_logs {
  #  bucket  = 
  #  prefix  =
  #  enabled = true
  #}

  tags = {
    Name = var.alb-awx-web
  }

  #lifecycle {
  #  create_before_destroy = true
  #}
}

resource "aws_lb_listener" "ALB-awx-WEB" {
  load_balancer_arn  = aws_lb.ALB-awx-WEB.arn
  port               = 80
  protocol           = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = data.aws_lb_target_group.TGS-awx-WEB.arn
  }
}
