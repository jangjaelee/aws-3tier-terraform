#data "aws_subnet" "pri-2a" {
#  id = var.private-2a
#}

#data "aws_subnet" "pri-2c" {
#  id = var.private-2c
#}

data "aws_subnet" "pri-2a" {
  filter {
    name = "tag:Name"
    values = [var.sn-private-2a]
  }
}

data "aws_subnet" "pri-2c" {
  filter {
    name = "tag:Name"
    values = [var.sn-private-2c]
  }
}

resource "aws_db_subnet_group" "rds-subnetgroup-awx" {
  description = "RDS MySQL Subnet Group"
  name        = "rds-subnetgroup-awx" 
  subnet_ids  = [data.aws_subnet.pri-2a.id, data.aws_subnet.pri-2c.id]

  tags = {
    Name = "RDS-subnetgroup-awx"
  }
}
