resource "aws_route_table" "rt-awx-public" {
  vpc_id = aws_vpc.vpc-awx.id

  route {
    cidr_block = var.internet-nat-gw
    gateway_id = aws_internet_gateway.igw-awx.id
  }

  tags = {
    Name = "RT-awx-public"
  }
}

resource "aws_route_table_association" "sn-associate-public-2a-webelb" {
  subnet_id      = aws_subnet.sn-public-2a-webelb.id
  route_table_id = aws_route_table.rt-awx-public.id
}

resource "aws_route_table_association" "sn-associate-public-2c-webelb" {
  subnet_id      = aws_subnet.sn-public-2c-webelb.id
  route_table_id = aws_route_table.rt-awx-public.id
}

resource "aws_route_table_association" "sn-associate-public-2a-natgw" {
  subnet_id      = aws_subnet.sn-public-2a-natgw.id
  route_table_id = aws_route_table.rt-awx-public.id
}

resource "aws_route_table_association" "sn-associate-public-2c-natgw" {
  subnet_id      = aws_subnet.sn-public-2c-natgw.id
  route_table_id = aws_route_table.rt-awx-public.id
}
