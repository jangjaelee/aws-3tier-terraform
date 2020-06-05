# Create VPC (Virtual Private Cloud)
resource "aws_vpc" "vpc-awx" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "VPC-awx"
  }
}

# Change Default route table
resource "aws_default_route_table" "rt-awx-default" {
  default_route_table_id = aws_vpc.vpc-awx.default_route_table_id

  route {
    cidr_block = var.internet-nat-gw
    gateway_id = aws_internet_gateway.igw-awx.id
  }

  tags = {
    Name = "RT-awx-default"
  }
}

# Change tag name of Default Network ACL
resource "aws_default_network_acl" "nacl-awx-default" {
  default_network_acl_id = aws_vpc.vpc-awx.default_network_acl_id

  ingress {
    rule_no    = 100
    protocol   = "-1"
    from_port  = 0
    to_port    = 0
    cidr_block = var.internet-nat-gw
    action     = "allow"
  }

  egress {
    rule_no    = 100
    protocol   = "-1"
    from_port  = 0
    to_port    = 0
    cidr_block = var.internet-nat-gw
    action     = "allow"
  }

  tags = {
    Name = "NACL-awx-default"
  }
}

# Change tag name of Default Security Group
resource "aws_default_security_group" "sg-awx-default" {
  vpc_id = aws_vpc.vpc-awx.id

  ingress {
    description = "Inbound"
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    self        = true
  }

  egress {
    description = "Outbound"
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    #self        = true
    cidr_blocks = [var.sg_outbound-any]
  }

  tags = {
    Name = "SG-awx-default"
  }
}
