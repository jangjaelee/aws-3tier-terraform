resource "aws_nat_gateway" "natgw-2a-awx" {
  allocation_id = aws_eip.eip-natgw-2a.id
  subnet_id     = aws_subnet.sn-public-2a-natgw.id

  tags = {
    Name = "NATGW-2a-awx"
  }
}

resource "aws_nat_gateway" "natgw-2c-awx" {
  allocation_id = aws_eip.eip-natgw-2c.id
  subnet_id     = aws_subnet.sn-public-2c-natgw.id

  tags = {
    Name = "NATGW-2c-awx"
  }
}
