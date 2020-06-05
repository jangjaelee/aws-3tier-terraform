data "aws_security_group" "sg-awx-private-was" {
  filter {
    name = "tag:Name"
    values = [var.sg-awx-private-was]
  }
}

data "aws_ami" "ami-awx-was" {
  most_recent = true

  filter {
    name = "tag:Name"
    values = [var.AMI-name-WAS]
  }

  owners = [var.ami-owner]
}

resource "aws_launch_configuration" "lc-awx-was" {
  name            = var.lc-awx-was
  key_name        = var.key-pair
  image_id        = data.aws_ami.ami-awx-was.id
  instance_type   = var.was-instance-type
  security_groups = [data.aws_security_group.sg-awx-private-was.id]

  root_block_device {
    delete_on_termination = true
    encrypted             = false
    volume_size           = var.lc-awx-was-vsize
    volume_type           = var.lc-awx-was-vtype
  }
}
