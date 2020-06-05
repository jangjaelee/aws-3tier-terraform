resource "aws_lb" "ALB-awx-WAS" {
  name           = var.alb-awx-was
  internal       = true
  load_balancer_type = "application"
  security_groups = [data.aws_security_group.sg-awx-private-waselb.id]
  subnets         = [for s in data.aws_subnet_ids.was-subnet-ids.ids : s]
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
    Name = var.alb-awx-was
  }

  #lifecycle {
  #  create_before_destroy = true
  #}
}

resource "aws_lb_listener" "ALB-awx-WAS" {
  load_balancer_arn  = aws_lb.ALB-awx-WAS.arn
  port               = 81
  protocol           = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = data.aws_lb_target_group.TGS-awx-WAS.arn
  }
}
