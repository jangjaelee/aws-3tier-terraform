data "aws_network_interface" "bastion-nic" {
  filter {
    name = "tag:Name"
    values = [var.bastion-nic]
  }
}

resource "aws_instance" "awx-bastion" {
  # AMI and Instance Type
  ami           = var.ami-id
  instance_type = var.instance-type

  # SSH connection Key
  key_name      = var.key-pair


  # Network Interface
  network_interface {
    network_interface_id = data.aws_network_interface.bastion-nic.id
    device_index         = 0
  }

  # Storage
  root_block_device {
    volume_type = "gp2"
    volume_size = 8
    encrypted   = false 
  }

  credit_specification {
    cpu_credits = "standard"
  }

  tags = {
    Name = "awx-bastion"
  }
}
