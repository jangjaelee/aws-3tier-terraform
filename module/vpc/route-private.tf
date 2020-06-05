# AZ - ap-northeat-2a
resource "aws_route_table" "rt-awx-private-2a" {
  vpc_id = aws_vpc.vpc-awx.id

  route {
    cidr_block = var.internet-nat-gw
    nat_gateway_id = aws_nat_gateway.natgw-2a-awx.id
  }

  tags = {
    Name = "RT-awx-private-2a"
  }
}

resource "aws_route_table_association" "sn-associate-private-2a-web" {
  subnet_id      = aws_subnet.sn-private-2a-web.id
  route_table_id = aws_route_table.rt-awx-private-2a.id
}

resource "aws_route_table_association" "sn-associate-private-2a-waselb" {
  subnet_id      = aws_subnet.sn-private-2a-waselb.id
  route_table_id = aws_route_table.rt-awx-private-2a.id
}

resource "aws_route_table_association" "sn-associate-private-2a-was" {
  subnet_id      = aws_subnet.sn-private-2a-was.id
  route_table_id = aws_route_table.rt-awx-private-2a.id
}

resource "aws_route_table_association" "sn-associate-private-2a-db" {
  subnet_id      = aws_subnet.sn-private-2a-db.id
  route_table_id = aws_route_table.rt-awx-private-2a.id
}

resource "aws_route_table" "rt-awx-private-2c" {
  vpc_id = aws_vpc.vpc-awx.id

  route {
    cidr_block = var.internet-nat-gw
    nat_gateway_id = aws_nat_gateway.natgw-2c-awx.id
  }

  tags = {
    Name = "RT-awx-private-2c"
  }
}

# AZ - ap-northeat-2c
resource "aws_route_table_association" "sn-associate-private-2c-web" {
  subnet_id      = aws_subnet.sn-private-2c-web.id
  route_table_id = aws_route_table.rt-awx-private-2c.id
}

resource "aws_route_table_association" "sn-associate-private-2c-waselb" {
  subnet_id      = aws_subnet.sn-private-2c-waselb.id
  route_table_id = aws_route_table.rt-awx-private-2c.id
}

resource "aws_route_table_association" "sn-associate-private-2c-was" {
  subnet_id      = aws_subnet.sn-private-2c-was.id
  route_table_id = aws_route_table.rt-awx-private-2c.id
}

resource "aws_route_table_association" "sn-associate-private-2c-db" {
  subnet_id      = aws_subnet.sn-private-2c-db.id
  route_table_id = aws_route_table.rt-awx-private-2c.id
}
