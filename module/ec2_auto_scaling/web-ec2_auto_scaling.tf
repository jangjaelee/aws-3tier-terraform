resource "aws_autoscaling_group" "asg-awx-web" {
  name                 = var.name-asg-awx-web
  launch_configuration = data.aws_launch_configuration.lc-awx-web.id

  # EC2 instance min to max (scale-out / scale-in count)
  min_size             = var.asg-awx-web-instance-min
  max_size             = var.asg-awx-web-instance-max

  # Subnet
  vpc_zone_identifier  = [data.aws_subnet.pri-2a-web.id, data.aws_subnet.pri-2c-web.id]

  # LB Target Groups
  target_group_arns    = [data.aws_lb_target_group.lb-tgs-web.arn]

  # Receive traffic from ELB
  #load_balancers       = 

  tag {
    key                 = "Name"
    value               = "ASG-aws-WebSRV"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }

  tag {
    key                 = "Name"
    value               = "Off-ASG-aws-WebSRV"
    propagate_at_launch = false
  }
}
