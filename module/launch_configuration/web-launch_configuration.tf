data "aws_security_group" "sg-awx-private-web" {
  filter {
    name = "tag:Name"
    values = [var.sg-awx-private-web]
  }
}

data "aws_ami" "ami-awx-web" {
  most_recent = true

  filter {
    name = "tag:Name"
    values = [var.AMI-name-WEB]
  }

  owners = [var.ami-owner]
}

resource "aws_launch_configuration" "lc-awx-web" {
  name            = var.lc-awx-web
  key_name        = var.key-pair
  image_id        = data.aws_ami.ami-awx-web.id
  instance_type   = var.web-instance-type
  security_groups = [data.aws_security_group.sg-awx-private-web.id]

  root_block_device {
    delete_on_termination = true
    encrypted             = false
    volume_size           = var.lc-awx-web-vsize
    volume_type           = var.lc-awx-web-vtype
  }
}
