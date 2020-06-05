data "aws_launch_configuration" "lc-awx-web" {
  name = var.lc-awx-web
}

data "aws_launch_configuration" "lc-awx-was" {
  name = var.lc-awx-was
}

data "aws_subnet" "pri-2a-web" {
  filter {
    name = "tag:Name"
    values = [var.sn-private-2a-web]
  }
}

data "aws_subnet" "pri-2c-web" {
  filter {
    name = "tag:Name"
    values = [var.sn-private-2c-web]
  }
}

data "aws_subnet" "pri-2a-was" {
  filter {
    name = "tag:Name"
    values = [var.sn-private-2a-was]
  }
}

data "aws_subnet" "pri-2c-was" {
  filter {
    name = "tag:Name"
    values = [var.sn-private-2c-was]
  }
}

data "aws_lb_target_group" "lb-tgs-web" {
  name = var.lb-tgs-awx-web
}

data "aws_lb_target_group" "lb-tgs-was" {
  name = var.lb-tgs-awx-was
}
