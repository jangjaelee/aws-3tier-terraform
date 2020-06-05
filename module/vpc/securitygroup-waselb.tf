# Serucity Group - Middleware - Application Load Balancer (ALB)
resource "aws_security_group" "sg-awx-private-waselb" {
  name         = "SG-awx-private-waselb"
  description  = "Middleware WAS - ALB security group"
  vpc_id       = aws_vpc.vpc-awx.id

  egress {
    description = "Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.sg_outbound-any]
  }

  tags = {
    Name = "SG-awx-private-waselb"
  }
}

# Security Group Rule - HTTP for ALB
resource "aws_security_group_rule" "sg-awx-private-waselb-rule-HTTP" {
  description              = "HTTP"
  type                     = "ingress"
  from_port                = 81
  to_port                  = 81
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.sg-awx-private-web.id
  security_group_id        = aws_security_group.sg-awx-private-waselb.id
}
