resource "aws_db_parameter_group" "rds-parameter-group" {
  description = "mysql parameter group for awx"
  name        = "rds-mysql-awx"
  family      = var.rds-family

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }

  parameter {
    name  = "time_zone"
    value = var.rds-time_zone
  }
}
