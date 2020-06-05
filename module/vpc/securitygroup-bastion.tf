# Security Group - Bastion
resource "aws_security_group" "sg-awx-public-bastion" {
  name         = "SG-awx-public-bastion"
  description  = "Bastion security group"
  vpc_id       = aws_vpc.vpc-awx.id

  egress {
    description = "Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.sg_outbound-any]
  }

  tags = {
    Name = "SG-awx-public-bastion"
  }
}

# Security Group Rule - SSH (TCP 22) - Admin for Bastion
resource "aws_security_group_rule" "sg-awx-public-bastion-rule-SSH" {
  description              = "Bastion for Admin"
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  cidr_blocks              = ["221.148.35.240/32","221.150.51.4/32", "13.209.172.51/32"]
  security_group_id        = aws_security_group.sg-awx-public-bastion.id
}
