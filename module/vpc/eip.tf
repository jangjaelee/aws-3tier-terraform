resource "aws_eip" "eip-natgw-2a" {
  vpc = true

  tags = {
    Name = "EIP-NATGW-2a-awx"
  }
}

resource "aws_eip" "eip-natgw-2c" {
  vpc = true

  tags = {
    Name = "EIP-NATGW-2c-awx"
  }
}

resource "aws_eip" "eip-awx-bastion" {
  vpc = true

  tags = {
    Name = "EIP-awx-bastion"
  }
}
