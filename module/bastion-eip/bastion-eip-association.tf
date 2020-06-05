data "aws_instance" "ec2-bastion-id" {
  filter {
    name = "tag:Name"
    values = [var.bastion-id]
  }
}

data "aws_eip" "bastion-eip-id" {
  filter {
    name = "tag:Name"
    values = [var.eip-id]
  }
}

resource "aws_eip_association" "eip-association-awx-bastion" {
  instance_id   = data.aws_instance.ec2-bastion-id.id
  allocation_id = data.aws_eip.bastion-eip-id.id
}
