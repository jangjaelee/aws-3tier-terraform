# Serucity Group - 2-Tier [WAS]
resource "aws_security_group" "sg-awx-private-was" {
  name         = "SG-awx-private-was"
  description  = "2-Tier WAS security group"
  vpc_id       = aws_vpc.vpc-awx.id

  egress {
    description = "Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.sg_outbound-any]
  }

  tags = {
    Name = "SG-awx-private-was"
  }
}

# Security Group Rule - HTTP (TCP 81)
resource "aws_security_group_rule" "sg-awx-private-was-rule-HTTP" {
  description              = "HTTP"
  type                     = "ingress"
  from_port                = 81
  to_port                  = 81
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.sg-awx-private-waselb.id
  security_group_id        = aws_security_group.sg-awx-private-was.id
}

# Security Group Rule - SSH (TCP 22)
resource "aws_security_group_rule" "sg-awx-private-was-rule-SSH" {
  description              = "SSH"
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.sg-awx-public-bastion.id
  security_group_id        = aws_security_group.sg-awx-private-was.id
}
