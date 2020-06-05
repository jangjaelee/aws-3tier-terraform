# Serucity Group - 1-Tier [Web]
resource "aws_security_group" "sg-awx-private-web" {
  name         = "SG-awx-private-web"
  description  = "1-Tier Web security group"
  vpc_id       = aws_vpc.vpc-awx.id

  egress {
    description = "Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.sg_outbound-any]
  }

  tags = {
    Name = "SG-awx-private-web"
  }
}

# Security Group Rule - HTTP (TCP 80)
resource "aws_security_group_rule" "sg-awx-private-web-rule-HTTP" {
  description              = "HTTP"
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.sg-awx-public-webelb.id
  security_group_id        = aws_security_group.sg-awx-private-web.id
}

# Security Group Rule - SSH (TCP 22)
resource "aws_security_group_rule" "sg-awx-private-web-rule-SSH" {
  description              = "SSH"
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.sg-awx-public-bastion.id
  security_group_id        = aws_security_group.sg-awx-private-web.id
}
