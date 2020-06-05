# Serucity Group - Front-end Application Load Balancer (ALB)
resource "aws_security_group" "sg-awx-public-webelb" {
  name         = "SG-awx-public-webelb"
  description  = "Front-end Web - ALB security group"
  vpc_id       = aws_vpc.vpc-awx.id

  egress {
    description = "Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.sg_outbound-any]
  }

  tags = {
    Name = "SG-awx-public-webelb"
  }
}

# Security Group Rule - HTTP for ALB
resource "aws_security_group_rule" "sg-awx-public-webelb-rule-HTTP" {
  description              = "HTTP"
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  cidr_blocks              = [var.sg_inbound-any]
  security_group_id        = aws_security_group.sg-awx-public-webelb.id
}

# Security Group Rule - HTTPS for ALB
resource "aws_security_group_rule" "sg-awx-public-webelb-rule-HTTPS" {
  description              = "HTTPS"
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  cidr_blocks              = [var.sg_outbound-any]
  security_group_id        = aws_security_group.sg-awx-public-webelb.id
}
