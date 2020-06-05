data "aws_subnet" "ec2-bastion-sn" {
  filter {
    name = "tag:Name"
    values = [var.sn-ec2-bastion]
  }
}

data "aws_security_group" "ec2-bastion-sg" {
  filter {
    name = "tag:Name"
    values = [var.sg-ec2-bastion]
  }
}

resource "aws_network_interface" "nic-eth0-awx-bastion" {
  description       = "NIC eth0 for awx-bastion"
  subnet_id         = data.aws_subnet.ec2-bastion-sn.id
  security_groups   = [data.aws_security_group.ec2-bastion-sg.id]

  tags = {
    Name = "NIC-eth0-awx-bastion"
  }
}
