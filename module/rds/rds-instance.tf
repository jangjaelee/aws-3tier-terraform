data "aws_security_group" "aws-sgs" {
  filter {
    name = "tag:Name"
    values = [var.sg-name]
  }
}

resource "aws_db_instance" "rds-instance" {
  # Engine options
  engine                       = "mysql"
  engine_version               = "5.5.61"


  # DB instance identifier
  identifier                   = "database-awx"
  username                     = "root"
  password                     = "password"

  # DB instance size
  instance_class               = "db.t2.small"
  storage_type                 = "gp2"
  allocated_storage            = 20
  max_allocated_storage        = 30

  # Availity & durability
  #availability_zone           = "ap-northeast-2a"  # if doesn't use multi_az, can choose an AZ (single)
  multi_az                     = true

  # Connectivity
  db_subnet_group_name         = aws_db_subnet_group.rds-subnetgroup-awx.id
  publicly_accessible          = false
  vpc_security_group_ids       = [data.aws_security_group.aws-sgs.id]
  port                         = 3306

  # Enhanced Monitoring
  #monitoring_interval          = "30"
  #monitoring_role_name         = "RDS-Monitoring-Role-awx"
  #create_monitoring_role       = true

  # Additional configuration
  #parameter_group_name         = "default.mysql5.5"
  parameter_group_name         = "rds-mysql-awx"
  backup_retention_period      = 7
  #backup_window                = 
  copy_tags_to_snapshot        = false
  skip_final_snapshot          = true
  final_snapshot_identifier    = "database-awx"

  # Maintenance
  allow_major_version_upgrade  = false
  auto_minor_version_upgrade   = false
  # maintenance_window          =
  apply_immediately            = false 

  # DB deletion protection
  deletion_protection          = false

  tags = {
    Name = "RDS-MySQL-5.5.61-awx"
  }
}
