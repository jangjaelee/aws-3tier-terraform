resource "aws_autoscaling_group" "asg-awx-was" {
  name                 = var.name-asg-awx-was
  launch_configuration = data.aws_launch_configuration.lc-awx-was.id

  # EC2 instance min to max (scale-out / scale-in count)
  min_size             = var.asg-awx-was-instance-min
  max_size             = var.asg-awx-was-instance-max

  # Subnet
  vpc_zone_identifier  = [data.aws_subnet.pri-2a-was.id, data.aws_subnet.pri-2c-was.id]

  # LB Target Groups
  target_group_arns    = [data.aws_lb_target_group.lb-tgs-was.arn]

  # Receive traffic from ELB
  #load_balancers       =

  tag {
    key                 = "Name"
    value               = "ASG-aws-WASSRV"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }

  tag {
    key                 = "Name"
    value               = "Off-ASG-aws-WASSRV"
    propagate_at_launch = false
  }

}
