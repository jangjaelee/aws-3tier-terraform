# Serucity Group - 3-Tier [DB]
resource "aws_security_group" "sg-awx-private-db" {
  name         = "SG-awx-private-db"
  description  = "3-Tier DB security group"
  vpc_id       = aws_vpc.vpc-awx.id

  egress {
    description = "Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.sg_outbound-any]
  }

  tags = {
    Name = "SG-awx-private-db"
  }
}

# Security Group Rule - MySQL (TCP 3306)
resource "aws_security_group_rule" "sg-awx-private-db-rule-MySQL-01" {
  description              = "MySQL"
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.sg-awx-private-was.id
  security_group_id        = aws_security_group.sg-awx-private-db.id
}

# Security Group Rule - MySQL (TCP 3306)
#resource "aws_security_group_rule" "sg-awx-private-db-rule-MySQL-02" {
#  description              = "MySQL"
#  type                     = "ingress"
#  from_port                = 3306
#  to_port                  = 3306
#  protocol                 = "tcp"
#  cidr_blocks              = [var.office-IP]
#  security_group_id        = aws_security_group.sg-awx-private-db.id
#}

resource "aws_security_group_rule" "sg-awx-private-was-rule-MySQL-03" {
  description              = "MySQL"
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.sg-awx-public-bastion.id
  security_group_id        = aws_security_group.sg-awx-private-db.id
}
